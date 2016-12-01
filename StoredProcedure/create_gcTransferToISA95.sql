GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcTransferToISA95]    Script Date: 29.11.2016 12:26:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcTransferToISA95]
	@eID int,
	@peID int,
	@teID int,
	@qeID int,
	@feID int,
	@fenID int,
	@feqID int,
	@mcID int,
	@mdID int,
	@mu nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ID int
	DECLARE @sID int
	DECLARE @mID int
	DECLARE @ecID int
	DECLARE @dt datetime
	DECLARE @Value float
	DECLARE @TValue float
	DECLARE @CURSOR CURSOR

	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT  ID, dt, Value  FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE  ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) 
	OPEN @CURSOR

	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF NOT EXISTS(SELECT sr.ID FROM SegmentResponse sr,  EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='1')
       	BEGIN
       		INSERT INTO SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) VALUES (@dt, @dt+1/24, '1')
			SELECT @sID = @@IDENTITY 
			SELECT @ecID=EquipmentClassID FROM Equipment WHERE ID=@eID
			INSERT INTO EquipmentActual (EquipmentClassID, EquipmentID, SegmentResponseID) VALUES (@ecID, @eID, @sID)
			INSERT INTO MaterialActual (MaterialClassID, MaterialDefinitionID, Quantity, MaterialUse, SegmentResponseID) VALUES (@mcID, @mdID, @Value, @mu,@sID)
			SELECT @mID = @@IDENTITY
			IF @fenID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @fenID 
				UPDATE MaterialActual SET Quantity = @TValue WHERE ID=@mID
			END
			IF @peID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @peID 
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'PE')
			END
			IF @teID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @teID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'TE')
			END
			IF @qeID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @qeID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'QE')
			END
			IF @feID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @feID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE')
			END
			IF @feqID <> 0
			BEGIN
				SELECT @TValue = Value FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData WHERE dt= @dt AND ID = @feqID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE_norm_Q')
			END
       	END
	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	END
	CLOSE @CURSOR
END

