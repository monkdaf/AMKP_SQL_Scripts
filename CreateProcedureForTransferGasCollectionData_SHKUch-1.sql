USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcCurDateTransfer01]    Script Date: 29.11.2016 12:24:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcCurDateTransfer01] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_1 float, 
		@TE1_1 float, 
		@QE1_1 float, 
		@FE1_1 float, 
		@FE1_1_norm float, 
		@FE1_1_norm_Q float

	SELECT TOP 1
	@dt = dt,
	@PE1_1 = PE1_1, 
	@TE1_1 = TE1_1, 
	@QE1_1 = QE1_1, 
	@FE1_1 = FE1_1, 
	@FE1_1_norm = FE1_1_norm, 
	@FE1_1_norm_Q = FE1_1_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur01] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 1, @Value = @PE1_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 2, @Value = @TE1_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 3, @Value = @QE1_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 4, @Value = @FE1_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 5, @Value = @FE1_1_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 6, @Value = @FE1_1_norm_Q

	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur01] WHERE dt<=@dt

	RETURN 1
END

GO
---==============================================================
---==============================================================
---==============================================================

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcFullTransfer]    Script Date: 29.11.2016 12:26:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[gcFullTransfer]

AS
BEGIN

	SET NOCOUNT ON;
        EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10000, 10001,'consumed'
END

---==============================================================
---==============================================================
---==============================================================

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcSumDateTransfer01]    Script Date: 29.11.2016 12:26:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer01]
AS
BEGIN
	SET NOCOUNT ON;

    DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_1 float, 
		@TE1_1 float, 
		@QE1_1 float, 
		@FE1_1 float, 
		@FE1_1_norm float, 
		@FE1_1_norm_Q float

	SELECT TOP 1
	@dt = dt,
	@PE1_1 = PE1_1, 
	@TE1_1 = TE1_1, 
	@QE1_1 = QE1_1, 
	@FE1_1 = FE1_1, 
	@FE1_1_norm = FE1_1_norm, 
	@FE1_1_norm_Q = FE1_1_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum01] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	WHILE ISDATE(@dt)<>0 
	BEGIN

		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 1, @Value = @PE1_1
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 2, @Value = @TE1_1
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 3, @Value = @QE1_1
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 4, @Value = @FE1_1
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 5, @Value = @FE1_1_norm
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 6, @Value = @FE1_1_norm_Q

		DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum01] WHERE dt=@dt

		SELECT TOP 1
			@dt = dt,
			@PE1_1 = PE1_1, 
			@TE1_1 = TE1_1, 
			@QE1_1 = QE1_1, 
			@FE1_1 = FE1_1, 
			@FE1_1_norm = FE1_1_norm, 
			@FE1_1_norm_Q = FE1_1_norm_Q
			FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum01] ORDER BY dt DESC
	END

	RETURN 1
END
---==============================================================
---==============================================================
---==============================================================
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


---==============================================================
---==============================================================
---==============================================================

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcUpdateCurData]    Script Date: 29.11.2016 12:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[gcUpdateCurData] 
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [KRR-PA-CNT-GasForISA95].[dbo].[CurData] WHERE ID=@ID) = 0
		INSERT INTO [KRR-PA-CNT-GasForISA95].[dbo].[CurData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [KRR-PA-CNT-GasForISA95].[dbo].[CurData] SET dt=@dt, Value=@VALUE	WHERE ID=@ID
END

---==============================================================
---==============================================================
---==============================================================
GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[UpdateSumData]    Script Date: 29.11.2016 12:27:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[gcUpdateSumData]
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData] WHERE ID=@ID AND dt=@dt) = 0
		INSERT INTO [KRR-PA-CNT-GasForISA95].[dbo].[SumData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [KRR-PA-CNT-GasForISA95].[dbo].[SumData] SET Value=@VALUE	WHERE ID=@ID AND dt=@dt
END

GO

