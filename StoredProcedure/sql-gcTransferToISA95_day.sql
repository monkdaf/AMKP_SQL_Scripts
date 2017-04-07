USE [KRR-PA-CNT-GasForISA95]
GO
/****** Object:  StoredProcedure [dbo].[gcTransferToISA95_day]    Script Date: 4/7/2017 10:42:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[gcTransferToISA95_day]
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
	DECLARE @sNew int
	DECLARE @ID int
	DECLARE @sID int
	DECLARE @mID int
	DECLARE @ecID int
	DECLARE @dt datetime
	--DECLARE @Value float
	DECLARE @Sum float
	DECLARE @Avg float
	DECLARE @TValue float
	DECLARE @CURSOR CURSOR
	DECLARE @segmentResponseOutputVar table( ID int); 
	DECLARE @materialActualOutputVar table( ID int); 
	
	DECLARE @DtBegin datetime = dateadd(d, -7, DATEFROMPARTS(YEAR(GETDATE()), Month(GETDATE()), day(GETDATE())));
	DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';

	SET @CURSOR  = CURSOR SCROLL
	FOR
	--SELECT  ID, dt, Value  FROM [dbo].SumData WHERE  ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) AND dt >= '2017-02-07'
	SELECT dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt)))) AS dt
		FROM [dbo].SumData
		WHERE ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) AND dt >= @DtBeginFull
		GROUP BY dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt))))
		ORDER BY dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt))))
	OPEN @CURSOR

	FETCH NEXT FROM @CURSOR INTO @dt
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @ecID=EquipmentClassID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].Equipment WHERE ID=@eID
		SET @sNew = 0
		SELECT @sID=sr.ID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse sr, [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='2'
		IF @@ROWCOUNT = 0 
       		BEGIN
       			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) OUTPUT INSERTED.ID INTO @segmentResponseOutputVar VALUES (@dt, @dt+1, '2') 
				SET @sNew = 1
				SELECT @sID = ID FROM  @segmentResponseOutputVar
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual (EquipmentClassID, EquipmentID, SegmentResponseID) VALUES (@ecID, @eID, @sID)
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual (MaterialClassID, MaterialDefinitionID, Quantity, MaterialUse, SegmentResponseID) OUTPUT INSERTED.ID INTO @materialActualOutputVar VALUES (@mcID, @mdID, 0, @mu,@sID)
				SELECT @mID = ID FROM  @materialActualOutputVar
			END
		ELSE
			BEGIN
				SELECT @mID=ID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual WHERE MaterialClassID = @mcID AND SegmentResponseID=@sID AND MaterialDefinitionID=@mdID AND MaterialUse=@mu
			END
		
		
		IF @fenID <> 0
		BEGIN
			SELECT @TValue = SUM(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @fenID 
			UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual SET Quantity = @TValue WHERE ID=@mID
		END
		IF @peID <> 0
		BEGIN
			SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @peID 
			IF @sNew=1
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'PE')
			ELSE
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty SET Quantity=@TValue WHERE MaterialActual=@mID AND Description='PE'
		END
		IF @teID <> 0
		BEGIN
			SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @teID
			IF @sNew=1
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'TE')
			ELSE
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty SET Quantity=@TValue WHERE MaterialActual=@mID AND Description='TE'
		END
		IF @qeID <> 0
		BEGIN
			SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @qeID
			IF @sNew=1
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'QE')
			ELSE
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty SET Quantity=@TValue WHERE MaterialActual=@mID AND Description='QE'
		END
		IF @feID <> 0
		BEGIN
			SELECT @TValue = SUM(Value)  FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @feID
			IF @sNew=1
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE')
			ELSE
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty SET Quantity=@TValue WHERE MaterialActual=@mID AND Description='FE'
		END
		IF @feqID <> 0
		BEGIN
			SELECT @TValue = SUM(Value)  FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dt+1+' 19:00' AND ID = @feqID
			IF @sNew=1
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE_norm_Q')
			ELSE
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty SET Quantity=@TValue WHERE MaterialActual=@mID AND Description='FE_norm_Q'
		END
		FETCH NEXT FROM @CURSOR INTO @dt
	END
	CLOSE @CURSOR
END

