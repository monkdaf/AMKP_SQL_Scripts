USE [KRR-PA-CNT-GasForISA95]
GO
/****** Object:  StoredProcedure [dbo].[gcTransferToISA95_month]    Script Date: 3/21/2017 5:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[gcTransferToISA95_month]
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
	DECLARE @dtEnd datetime
	--DECLARE @Value float
	DECLARE @Sum float
	DECLARE @Avg float
	DECLARE @TValue float
	DECLARE @CURSOR CURSOR
	DECLARE @segmentResponseOutputVar table( ID int); 
	DECLARE @materialActualOutputVar table( ID int); 
	
	DECLARE @DtBegin datetime = dateadd(m, 0, DATEFROMPARTS(YEAR(GETDATE()), Month(GETDATE()), 1));
	DECLARE @DtBeginFull datetime = @DtBegin;

	SET @CURSOR  = CURSOR SCROLL
	FOR
	--SELECT  ID, dt, Value  FROM [dbo].SumData WHERE  ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) AND dt >= '2017-02-07'
	SELECT dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), 1)) AS dt
		FROM [dbo].SumData
		WHERE ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) AND dt >= @DtBeginFull
		GROUP BY dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), 1))
		ORDER BY dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), 1))
	OPEN @CURSOR

	FETCH NEXT FROM @CURSOR INTO @dt
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT sr.ID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse sr, [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='3'
		IF @@ROWCOUNT = 0 
       	BEGIN
			SET @dtEnd = DATEFROMPARTS(YEAR(@dt+32), Month(@dt+32), 1)
       		INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) OUTPUT INSERTED.ID INTO @segmentResponseOutputVar VALUES (@dt, @dtEnd, '3') 
			SELECT @sID = ID FROM  @segmentResponseOutputVar

			SELECT @ecID=EquipmentClassID FROM [KRR-PA-ISA95_PRODUCTION].[dbo].Equipment WHERE ID=@eID
			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].EquipmentActual (EquipmentClassID, EquipmentID, SegmentResponseID) VALUES (@ecID, @eID, @sID)
			INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual (MaterialClassID, MaterialDefinitionID, Quantity, MaterialUse, SegmentResponseID) OUTPUT INSERTED.ID INTO @materialActualOutputVar VALUES (@mcID, @mdID, 0, @mu,@sID)
			SELECT @mID = ID FROM  @materialActualOutputVar
			IF @fenID <> 0
			BEGIN
				SELECT @TValue = SUM(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @fenID 
				UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActual SET Quantity = @TValue WHERE ID=@mID
			END
			IF @peID <> 0
			BEGIN
				SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @peID 
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'PE')
			END
			IF @teID <> 0
			BEGIN
				SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @teID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'TE')
			END
			IF @qeID <> 0
			BEGIN
				SELECT @TValue = AVG(Value) FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @qeID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'QE')
			END
			IF @feID <> 0
			BEGIN
				SELECT @TValue = SUM(Value)  FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @feID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE')
			END
			IF @feqID <> 0
			BEGIN
				SELECT @TValue = SUM(Value)  FROM [dbo].SumData WHERE dt>= @dt+' 19:00' AND dt<@dtEnd+' 19:00' AND ID = @feqID
				INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE_norm_Q')
			END
       	END
		FETCH NEXT FROM @CURSOR INTO @dt
	END
	CLOSE @CURSOR
END

