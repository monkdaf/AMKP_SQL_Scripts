--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcTransferToISA95]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcTransferToISA95]
END

---- body of procedure
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
	DECLARE @segmentResponseOutputVar table( ID int); 
	DECLARE @materialActualOutputVar table( ID int); 
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT  ID, dt, Value  FROM [dbo].SumData WHERE  ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) 
	OPEN @CURSOR

	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	WHILE @@FETCH_STATUS = 0
	BEGIN
--IF NOT EXISTS(SELECT sr.ID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse sr, [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='1')
		SELECT sr.ID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse sr, [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='1'
		IF @@ROWCOUNT = 0 
       	BEGIN
       		INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) OUTPUT INSERTED.ID INTO @segmentResponseOutputVar VALUES (@dt, @dt+1/24, '1') 
			SELECT @sID = ID FROM  @segmentResponseOutputVar

--       		INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) VALUES (@dt, @dt+1/24, '1')
--			OUTPUT INSERTED.ID INTO @outputVar
			SELECT @ecID=EquipmentClassID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].Equipment WHERE ID=@eID
			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual (EquipmentClassID, EquipmentID, SegmentResponseID) VALUES (@ecID, @eID, @sID)
--			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual (MaterialClassID, MaterialDefinitionID, Quantity, MaterialUse, SegmentResponseID) VALUES (@mcID, @mdID, @Value, @mu,@sID)
--			SELECT @mID = @@IDENTITY
			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual (MaterialClassID, MaterialDefinitionID, Quantity, MaterialUse, SegmentResponseID) OUTPUT INSERTED.ID INTO @materialActualOutputVar VALUES (@mcID, @mdID, @Value, @mu,@sID)
			SELECT @mID = ID FROM  @materialActualOutputVar
			IF @fenID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @fenID 
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual SET Quantity = @TValue WHERE ID=@mID
			END
			IF @peID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @peID 
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'PE')
			END
			IF @teID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @teID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'TE')
			END
			IF @qeID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @qeID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'QE')
			END
			IF @feID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @feID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE')
			END
			IF @feqID <> 0
			BEGIN
				SELECT @TValue = Value FROM [dbo].SumData WHERE dt= @dt AND ID = @feqID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE_norm_Q')
			END
       	END
	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	END
	CLOSE @CURSOR
END

