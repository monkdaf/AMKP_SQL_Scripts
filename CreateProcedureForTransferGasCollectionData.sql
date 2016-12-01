USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer01]    Script Date: 29.11.2016 12:24:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [[dbo].].[gcCurDateTransfer01] 

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
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer02]    Script Date: 29.11.2016 12:24:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer02] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_2 float,
		@TE1_2 float,
		@QE1_2 float,
		@FE1_2 float,
		@FE1_2_norm float,
		@FE1_2_norm_Q float,
		@PE3_20 float,
		@TE3_18 float,
		@QE3_20 float,
		@FE3_18 float,
		@FE3_18_norm float,
		@FE3_18_norm_Q float,
		@PE3_22 float,
		@TE3_20 float,
		@QE3_22 float,
		@FE3_20 float,
		@FE3_20_norm float,
		@FE3_20_norm_Q float,
		@PE3_23 float,
		@TE3_21 float,
		@QE3_23 float,
		@FE3_21 float,
		@FE3_21_norm float,
		@FE3_21_norm_Q float,
		@PE3_24 float,
		@TE3_22 float,
		@QE3_24 float,
		@FE3_22 float,
		@FE3_22_norm float,
		@FE3_22_norm_Q float
		 

	SELECT TOP 1
	@dt = dt,
	@PE1_2 = PE1_2,
	@TE1_2 = TE1_2,
	@QE1_2 = QE1_2,
	@FE1_2 = FE1_2,
	@FE1_2_norm = FE1_2_norm,
	@FE1_2_norm_Q = FE1_2_norm_Q,
	@PE3_20 = PE3_20,
	@TE3_18 = TE3_18,
	@QE3_20 = QE3_20,
	@FE3_18 = FE3_18,
	@FE3_18_norm = FE3_18_norm,
	@FE3_18_norm_Q = FE3_18_norm_Q,
	@PE3_22 = PE3_22,
	@TE3_20 = TE3_20,
	@QE3_22 = QE3_22,
	@FE3_20 = FE3_20,
	@FE3_20_norm = FE3_20_norm,
	@FE3_20_norm_Q = FE3_20_norm_Q,
	@PE3_23 = PE3_23,
	@TE3_21 = TE3_21,
	@QE3_23 = QE3_23,
	@FE3_21 = FE3_21,
	@FE3_21_norm = FE3_21_norm,
	@FE3_21_norm_Q = FE3_21_norm_Q,
	@PE3_24 = PE3_24,
	@TE3_22 = TE3_22,
	@QE3_24 = QE3_24,
	@FE3_22 = FE3_22,
	@FE3_22_norm = FE3_22_norm,
	@FE3_22_norm_Q = FE3_22_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur02] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 7, @Value = @PE1_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 8, @Value = @TE1_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 9, @Value = @QE1_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 10, @Value = @FE1_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 11, @Value = @FE1_2_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 12, @Value = @FE1_2_norm_Q 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 13, @Value = @PE3_20 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 14, @Value = @TE3_18 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 15, @Value = @QE3_20 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 16, @Value = @FE3_18 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 17, @Value = @FE3_18_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 18, @Value = @FE3_18_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 19, @Value = @PE3_22 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 20, @Value = @TE3_20 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 21, @Value = @QE3_22 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 22, @Value = @FE3_20 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 23, @Value = @FE3_20_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 24, @Value = @FE3_20_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 25, @Value = @PE3_23 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 26, @Value = @TE3_21 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 27, @Value = @QE3_23 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 28, @Value = @FE3_21 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 29, @Value = @FE3_21_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 30, @Value = @FE3_21_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 31, @Value = @PE3_24 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 32, @Value = @TE3_22 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 33, @Value = @QE3_24 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 34, @Value = @FE3_22 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 35, @Value = @FE3_22_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 36, @Value = @FE3_22_norm_Q

	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur02] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer03]    Script Date: 29.11.2016 12:24:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer03] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_5 float,
		@TE3_5 float,
		@QE3_5 float,
		@FE3_5 float,
		@FE3_5_norm float,
		@FE3_5_norm_Q float,
		@PE3_6 float,
		@TE3_6 float,
		@FE3_6 float,
		@FE3_6_norm float,
		@FE3_6_norm_Q float,
		@PE3_7 float,
		@TE3_7 float,
		@FE3_7 float,
		@FE3_7_norm float,
		@FE3_7_norm_Q float,
		@PE3_8 float,
		@TE3_8 float,
		@QE3_6 float,
		@FE3_8 float,
		@FE3_8_norm float,
		@FE3_8_norm_Q float,
		@QE3_7 float,
		@QE3_8 float,
		@QE3_9 float

	SELECT TOP 1
	@dt = dt,
	@PE3_5 = PE3_5,
	@TE3_5 = TE3_5, 
	@QE3_5 = QE3_5,
	@FE3_5 = FE3_5,
	@FE3_5_norm = FE3_5_norm,
	@FE3_5_norm_Q = FE3_5_norm_Q,
	@PE3_6 = PE3_6,
	@TE3_6 = TE3_6,
	@FE3_6 = FE3_6, 
	@FE3_6_norm = FE3_6_norm,
	@FE3_6_norm_Q = FE3_6_norm_Q,
	@PE3_7 = PE3_7,
	@TE3_7 = TE3_7,
	@FE3_7 = FE3_7,
	@FE3_7_norm = FE3_7_norm,
	@FE3_7_norm_Q = FE3_7_norm_Q,
	@PE3_8 = PE3_8,
	@TE3_8 = TE3_8,
	@QE3_6 = QE3_6,
	@FE3_8 = FE3_8,
	@FE3_8_norm = FE3_8_norm,
	@FE3_8_norm_Q = FE3_8_norm_Q,
	@QE3_7 = QE3_7,
	@QE3_8 = QE3_8, 
	@QE3_9 = QE3_9
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur03] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 37, @Value = @PE3_5
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 38, @Value = @TE3_5 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 39, @Value = @QE3_5 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 40, @Value = @FE3_5 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 41, @Value = @FE3_5_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 42, @Value = @FE3_5_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 43, @Value = @PE3_6 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 44, @Value = @TE3_6 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 45, @Value = @FE3_6 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 46, @Value = @FE3_6_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 47, @Value = @FE3_6_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 48, @Value = @PE3_7 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 49, @Value = @TE3_7 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 50, @Value = @FE3_7 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 51, @Value = @FE3_7_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 52, @Value = @FE3_7_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 53, @Value = @PE3_8 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 54, @Value = @TE3_8 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 55, @Value = @QE3_6 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 56, @Value = @FE3_8 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 57, @Value = @FE3_8_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 58, @Value = @FE3_8_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 59, @Value = @QE3_7 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 60, @Value = @QE3_8 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 61, @Value = @QE3_9 

	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur03] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer04]    Script Date: 29.11.2016 12:25:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer04] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_1 float,
		@TE3_1 float,
		@QE3_1 float,
		@FE3_1 float,
		@FE3_1_norm float,
		@FE3_1_norm_Q float,
		@PE3_2 float,
		@TE3_2 float,
		@FE3_2 float,
		@FE3_2_norm float,
		@FE3_2_norm_Q float,
		@PE3_3 float,
		@TE3_3 float,
		@FE3_3 float,
		@FE3_3_norm float,
		@FE3_3_norm_Q float,
		@PE3_4 float,
		@TE3_4 float,
		@FE3_4 float,
		@FE3_4_norm float,
		@FE3_4_norm_Q float,
		@QE3_2 float,
		@QE3_3 float,
		@QE3_4 float


	SELECT TOP 1
	@dt = dt,
	@PE3_1 = PE3_1,
	@TE3_1 = TE3_1, 
	@QE3_1 = QE3_1,
	@FE3_1 = FE3_1,
	@FE3_1_norm = FE3_1_norm,
	@FE3_1_norm_Q = FE3_1_norm_Q,
	@PE3_2 = PE3_2,
	@TE3_2 = TE3_2,
	@FE3_2 = FE3_2,
	@FE3_2_norm = FE3_2_norm,
	@FE3_2_norm_Q = FE3_2_norm_Q,
	@PE3_3 = PE3_3,
	@TE3_3 = TE3_3,
	@FE3_3 = FE3_3,
	@FE3_3_norm = FE3_3_norm,
	@FE3_3_norm_Q = FE3_3_norm_Q,
	@PE3_4 = PE3_4,
	@TE3_4 = TE3_4,
	@FE3_4 = FE3_4,
	@FE3_4_norm  = FE3_4_norm,
	@FE3_4_norm_Q = FE3_4_norm_Q,
	@QE3_2 = QE3_2,
	@QE3_3 = QE3_3,
	@QE3_4 = QE3_4
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur04] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 62, @Value = @PE3_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 63, @Value = @TE3_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 64, @Value = @QE3_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 65, @Value = @FE3_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 66, @Value = @FE3_1_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 67, @Value = @FE3_1_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 68, @Value = @PE3_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 69, @Value = @TE3_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 70, @Value = @FE3_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 71, @Value = @FE3_2_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 72, @Value = @FE3_2_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 73, @Value = @PE3_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 74, @Value = @TE3_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 75, @Value = @FE3_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 76, @Value = @FE3_3_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 77, @Value = @FE3_3_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 78, @Value = @PE3_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 79, @Value = @TE3_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 80, @Value = @FE3_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 81, @Value = @FE3_4_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 82, @Value = @FE3_4_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 83, @Value = @QE3_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 84, @Value = @QE3_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 85, @Value = @QE3_4
 

	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur04] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer05]    Script Date: 29.11.2016 12:25:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer05] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_3 float,
		@TE1_3 float,
		@FE1_3 float,
		@QE1_3 float,
		@FE1_3_norm float,
		@FE1_3_norm_Q float,
		@PE1_4 float,
		@TE1_4 float,
		@FE1_4 float,
		@FE1_4_norm float,
		@FE1_4_norm_Q float,
		@PE3_9 float,
		@TE3_9 float,
		@FE3_9 float,
		@QE3_10 float,
		@FE3_9_norm float,
		@FE3_9_norm_Q float,
		@QE3_11 float


	SELECT TOP 1
	@dt = dt,
	@PE1_3 = PE1_3,
	@TE1_3 = TE1_3,
	@FE1_3 = FE1_3,
	@QE1_3 = QE1_3,
	@FE1_3_norm = FE1_3_norm,
	@FE1_3_norm_Q = FE1_3_norm_Q,
	@PE1_4 = PE1_4,
	@TE1_4 = TE1_4,
	@FE1_4 = FE1_4,
	@FE1_4_norm = FE1_4_norm,
	@FE1_4_norm_Q = FE1_4_norm_Q,
	@PE3_9 = PE3_9,
	@TE3_9 = TE3_9,
	@FE3_9 = FE3_9,
	@QE3_10 = QE3_10,
	@FE3_9_norm = FE3_9_norm,
	@FE3_9_norm_Q = FE3_9_norm_Q,
	@QE3_11 = QE3_11
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur05] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 86, @Value  = @PE1_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 87, @Value  = @TE1_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 88, @Value  = @FE1_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 89, @Value  = @QE1_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 90, @Value  = @FE1_3_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 91, @Value  = @FE1_3_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 92, @Value  = @PE1_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 93, @Value  = @TE1_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 94, @Value  = @FE1_4
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 95, @Value  = @FE1_4_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 96, @Value  = @FE1_4_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 97, @Value  = @PE3_9
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 98, @Value  = @TE3_9
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 99, @Value  = @FE3_9
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 100, @Value = @QE3_10
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 101, @Value = @FE3_9_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 102, @Value = @FE3_9_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 103, @Value = @QE3_11

 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur05] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer07]    Script Date: 29.11.2016 12:25:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer07] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE2_1 float,
		@TE2_1 float,
		@FE2_1 float,
		@FE2_1_norm float,
		@PE2_2 float,
		@TE2_2 float,
		@FE2_2 float,
		@FE2_2_norm float,
		@PE2_3 float,
		@TE2_3 float,
		@FE2_3 float,
		@FE2_3_norm float,
		@PE3_18 float,
		@TE3_16 float,
		@FE3_16 float,
		@QE3_18 float,
		@FE3_16_norm float,
		@FE3_16_norm_Q float,
		@PE3_19 float,
		@TE3_17 float,
		@FE3_17 float,
		@QE3_19 float,
		@FE3_17_norm float,
		@FE3_17_norm_Q float,
		@PE3_21 float,
		@TE3_19 float,
		@FE3_19 float,
		@QE3_21 float,
		@FE3_19_norm float,
		@FE3_19_norm_Q float,
		@PE3_25 float,
		@TE3_23 float,
		@FE3_23 float,
		@FE3_23_norm float,
		@FE3_23_norm_Q float


	SELECT TOP 1
	@dt = dt,
	@PE2_1 = PE2_1,
	@TE2_1 = TE2_1,
	@FE2_1 = FE2_1,
	@FE2_1_norm = FE2_1_norm,
	@PE2_2 = PE2_2,
	@TE2_2 = TE2_2,
	@FE2_2 = FE2_2,
	@FE2_2_norm = FE2_2_norm,
	@PE2_3 = PE2_3,
	@TE2_3 = TE2_3,
	@FE2_3 = FE2_3,
	@FE2_3_norm = FE2_3_norm,
	@PE3_18 = PE3_18,
	@TE3_16 = TE3_16,
	@FE3_16 = FE3_16,
	@QE3_18 = QE3_18,
	@FE3_16_norm = FE3_16_norm,
	@FE3_16_norm_Q = FE3_16_norm_Q,
	@PE3_19 = PE3_19,
	@TE3_17 = TE3_17,
	@FE3_17 = FE3_17,
	@QE3_19 = QE3_19,
	@FE3_17_norm = FE3_17_norm,
	@FE3_17_norm_Q = FE3_17_norm_Q,
	@PE3_21 = PE3_21,
	@TE3_19 = TE3_19,
	@FE3_19 = FE3_19,
	@QE3_21 = QE3_21,
	@FE3_19_norm = FE3_19_norm,
	@FE3_19_norm_Q = FE3_19_norm_Q,
	@PE3_25 = PE3_25,
	@TE3_23 = TE3_23,
	@FE3_23 = FE3_23,
	@FE3_23_norm = FE3_23_norm,
	@FE3_23_norm_Q = FE3_23_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur07] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 104, @Value = @PE2_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 105, @Value = @TE2_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 106, @Value = @FE2_1
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 107, @Value = @FE2_1_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 108, @Value = @PE2_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 109, @Value = @TE2_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 110, @Value = @FE2_2
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 111, @Value = @FE2_2_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 112, @Value = @PE2_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 113, @Value = @TE2_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 114, @Value = @FE2_3
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 115, @Value = @FE2_3_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 116, @Value = @PE3_18
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 117, @Value = @TE3_16
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 118, @Value = @FE3_16
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 119, @Value = @QE3_18
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 120, @Value = @FE3_16_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 121, @Value = @FE3_16_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 122, @Value = @PE3_19
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 123, @Value = @TE3_17
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 124, @Value = @FE3_17
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 125, @Value = @QE3_19
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 126, @Value = @FE3_17_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 127, @Value = @FE3_17_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 128, @Value = @PE3_21
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 129, @Value = @TE3_19
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 130, @Value = @FE3_19
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 131, @Value = @QE3_21
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 132, @Value = @FE3_19_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 133, @Value = @FE3_19_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 134, @Value = @PE3_25
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 135, @Value = @TE3_23
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 136, @Value = @FE3_23
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 137, @Value = @FE3_23_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 138, @Value = @FE3_23_norm_Q

 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur07] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer08]    Script Date: 29.11.2016 12:25:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer08] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_14 float,
		@PE3_15 float,
		@PE3_16 float,
		@TE3_14 float,
		@FE3_14 float,
		@QE3_16 float,
		@FE3_14_norm float,
		@FE3_14_norm_Q float,
		@PE3_17 float,
		@TE3_15 float,
		@FE3_15 float,
		@QE3_17 float,
		@FE3_15_norm float,
		@FE3_15_norm_Q float


	SELECT TOP 1
	@dt = dt,
	@PE3_14 = PE3_14,
	@PE3_15 = PE3_15,
	@PE3_16 = PE3_16,
	@TE3_14 = TE3_14,
	@FE3_14 = FE3_14,
	@QE3_16 = QE3_16,
	@FE3_14_norm = FE3_14_norm,
	@FE3_14_norm_Q = FE3_14_norm_Q,
	@PE3_17 = PE3_17,
	@TE3_15 = TE3_15,
	@FE3_15 = FE3_15,
	@QE3_17 = QE3_17,
	@FE3_15_norm = FE3_15_norm,
	@FE3_15_norm_Q = FE3_15_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur08] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 139, @Value = @PE3_14
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 140, @Value = @PE3_15
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 141, @Value = @PE3_16
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 142, @Value = @TE3_14
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 143, @Value = @FE3_14
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 144, @Value = @QE3_16
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 145, @Value = @FE3_14_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 146, @Value = @FE3_14_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 147, @Value = @PE3_17
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 148, @Value = @TE3_15
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 149, @Value = @FE3_15
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 150, @Value = @QE3_17
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 151, @Value = @FE3_15_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 152, @Value = @FE3_15_norm_Q
	
 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur08] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer09]    Script Date: 29.11.2016 12:25:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [[dbo].].[gcCurDateTransfer09] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_10 float,
		@TE3_10 float,
		@FE3_10 float,
		@QE3_12 float,
		@FE3_10_norm float,
		@FE3_10_norm_Q float,
		@PE3_11 float,
		@TE3_11 float,
		@FE3_11 float,
		@QE3_13 float,
		@FE3_11_norm float,
		@FE3_11_norm_Q float,
		@PE3_12 float,
		@TE3_12 float,
		@FE3_12 float,
		@QE3_14 float,
		@FE3_12_norm float,
		@FE3_12_norm_Q float

		
	SELECT TOP 1
	@dt = dt,
	@PE3_10 = PE3_10,
	@TE3_10 = TE3_10, 
	@FE3_10 = FE3_10,
	@QE3_12 = QE3_12,
	@FE3_10_norm = FE3_10_norm,
	@FE3_10_norm_Q = FE3_10_norm_Q,
	@PE3_11 = PE3_11,
	@TE3_11 = TE3_11,
	@FE3_11 = FE3_11,
	@QE3_13 = QE3_13,
	@FE3_11_norm = FE3_11_norm,
	@FE3_11_norm_Q = FE3_11_norm_Q,
	@PE3_12 = PE3_12,
	@TE3_12 = TE3_12,
	@FE3_12 = FE3_12,
	@QE3_14 = QE3_14,
	@FE3_12_norm = FE3_12_norm,
	@FE3_12_norm_Q = FE3_12_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur09] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 153, @Value = @PE3_10
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 154, @Value = @TE3_10
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 155, @Value = @FE3_10
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 156, @Value = @QE3_12
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 157, @Value = @FE3_10_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 158, @Value = @FE3_10_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 159, @Value = @PE3_11
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 160, @Value = @TE3_11
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 161, @Value = @FE3_11
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 162, @Value = @QE3_13
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 163, @Value = @FE3_11_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 164, @Value = @FE3_11_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 165, @Value = @PE3_12
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 166, @Value = @TE3_12
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 167, @Value = @FE3_12
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 168, @Value = @QE3_14
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 169, @Value = @FE3_12_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 170, @Value = @FE3_12_norm_Q
	
 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur09] WHERE dt<=@dt

	RETURN 1
END


GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer10]    Script Date: 29.11.2016 12:26:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [[dbo].].[gcCurDateTransfer10] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_13 float,
		@TE3_13 float,
		@FE3_13 float,
		@QE3_15 float,
		@FE3_13_norm float,
		@FE3_13_norm_Q float

		
	SELECT TOP 1
	@dt = dt,
	@PE3_13 = PE3_13,
	@TE3_13 = TE3_13, 
	@FE3_13 = FE3_13,
	@QE3_15 = QE3_15,
	@FE3_13_norm = FE3_13_norm,
	@FE3_13_norm_Q = FE3_13_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur10] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 171, @Value = @PE3_13
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 172, @Value = @TE3_13
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 173, @Value = @FE3_13
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 174, @Value = @QE3_15
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 175, @Value = @FE3_13_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 176, @Value = @FE3_13_norm_Q
		
 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur10] WHERE dt<=@dt

	RETURN 1
END



GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcCurDateTransfer11]    Script Date: 29.11.2016 12:26:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [[dbo].].[gcCurDateTransfer11] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE_7103_04A_P06 float,
		@TE_7103_04A_T01 float,
		@FE_7103_04A_F02 float,
		@QE_7101_10_A66 float,
		@FE_7103_04A_F02_norm float,
		@FE_7103_04A_F02_norm_Q float,
		@PE_7103_04B_P06 float,
		@TE_7103_04B_T01 float,
		@FE_7103_04B_F02 float,
		@FE_7103_04B_F02_norm float,
		@FE_7103_04B_F02_norm_Q float,
		@PE_7105_04_P06 float,
		@TE_7105_04_T01 float,
		@FE_7105_04_F02 float,
		@FE_7105_04_F02_norm float,
		@FE_7105_04_F02_norm_Q float,
		@PE_7303_04_P06 float,
		@TE_7303_04_T01 float,
		@FE_7303_04_F02 float,
		@QE_7303_10_A56 float,
		@FE_7303_04_F02_norm float,
		@FE_7303_04_F02_norm_Q float

		
	SELECT TOP 1
	@dt = dt,
	@PE_7103_04A_P06 = PE_7103_04A_P06,
	@TE_7103_04A_T01 = TE_7103_04A_T01, 
	@FE_7103_04A_F02 = FE_7103_04A_F02,
	@QE_7101_10_A66 = QE_7101_10_A66,
	@FE_7103_04A_F02_norm = FE_7103_04A_F02_norm,
	@FE_7103_04A_F02_norm_Q = FE_7103_04A_F02_norm_Q,
	@PE_7103_04B_P06 = PE_7103_04B_P06,
	@TE_7103_04B_T01 = TE_7103_04B_T01,
	@FE_7103_04B_F02 = FE_7103_04B_F02,
	@FE_7103_04B_F02_norm = FE_7103_04B_F02_norm,
	@FE_7103_04B_F02_norm_Q = FE_7103_04B_F02_norm_Q,
	@PE_7105_04_P06 = PE_7105_04_P06,
	@TE_7105_04_T01 = TE_7105_04_T01,
	@FE_7105_04_F02 = FE_7105_04_F02,
	@FE_7105_04_F02_norm = FE_7105_04_F02_norm,
	@FE_7105_04_F02_norm_Q = FE_7105_04_F02_norm_Q,
	@PE_7303_04_P06 = PE_7303_04_P06,
	@TE_7303_04_T01 = TE_7303_04_T01,
	@FE_7303_04_F02 = FE_7303_04_F02,
	@QE_7303_10_A56 = QE_7303_10_A56,
	@FE_7303_04_F02_norm = FE_7303_04_F02_norm,
	@FE_7303_04_F02_norm_Q = FE_7303_04_F02_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur11] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 177, @Value = @PE_7103_04A_P06
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 178, @Value = @TE_7103_04A_T01
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 179, @Value = @FE_7103_04A_F02
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 180, @Value = @QE_7101_10_A66 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 181, @Value = @FE_7103_04A_F02_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 182, @Value = @FE_7103_04A_F02_norm_Q
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 183, @Value = @PE_7103_04B_P06 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 184, @Value = @TE_7103_04B_T01 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 185, @Value = @FE_7103_04B_F02 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 186, @Value = @FE_7103_04B_F02_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 187, @Value = @FE_7103_04B_F02_norm_Q 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 188, @Value = @PE_7105_04_P06 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 189, @Value = @TE_7105_04_T01 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 190, @Value = @FE_7105_04_F02 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 191, @Value = @FE_7105_04_F02_norm 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 192, @Value = @FE_7105_04_F02_norm_Q 
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 193, @Value = @PE_7303_04_P06
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 194, @Value = @TE_7303_04_T01
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 195, @Value = @FE_7303_04_F02
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 196, @Value = @QE_7303_10_A56
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 197, @Value = @FE_7303_04_F02_norm
	EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[gcUpdateCurData] @dt = @dt, @ID = 198, @Value = @FE_7303_04_F02_norm_Q  
	
 	DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcCur11] WHERE dt<=@dt

	RETURN 1
END



GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcFullTransfer]    Script Date: 29.11.2016 12:26:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [[dbo].].[gcFullTransfer]

AS
BEGIN

	SET NOCOUNT ON;

	EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10001, 10001,'consumed'
END

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcSumDateTransfer01]    Script Date: 29.11.2016 12:26:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [[dbo].].[gcSumDateTransfer01]
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

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcSumDateTransfer02]    Script Date: 29.11.2016 12:26:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [[dbo].].[gcSumDateTransfer02] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_2 float,
		@TE1_2 float,
		@QE1_2 float,
		@FE1_2 float,
		@FE1_2_norm float,
		@FE1_2_norm_Q float,
		@PE3_20 float,
		@TE3_18 float,
		@QE3_20 float,
		@FE3_18 float,
		@FE3_18_norm float,
		@FE3_18_norm_Q float,
		@PE3_22 float,
		@TE3_20 float,
		@QE3_22 float,
		@FE3_20 float,
		@FE3_20_norm float,
		@FE3_20_norm_Q float,
		@PE3_23 float,
		@TE3_21 float,
		@QE3_23 float,
		@FE3_21 float,
		@FE3_21_norm float,
		@FE3_21_norm_Q float,
		@PE3_24 float,
		@TE3_22 float,
		@QE3_24 float,
		@FE3_22 float,
		@FE3_22_norm float,
		@FE3_22_norm_Q float
		 

	SELECT TOP 1
	@dt = dt,
	@PE1_2 = PE1_2,
	@TE1_2 = TE1_2,
	@QE1_2 = QE1_2,
	@FE1_2 = FE1_2,
	@FE1_2_norm = FE1_2_norm,
	@FE1_2_norm_Q = FE1_2_norm_Q,
	@PE3_20 = PE3_20,
	@TE3_18 = TE3_18,
	@QE3_20 = QE3_20,
	@FE3_18 = FE3_18,
	@FE3_18_norm = FE3_18_norm,
	@FE3_18_norm_Q = FE3_18_norm_Q,
	@PE3_22 = PE3_22,
	@TE3_20 = TE3_20,
	@QE3_22 = QE3_22,
	@FE3_20 = FE3_20,
	@FE3_20_norm = FE3_20_norm,
	@FE3_20_norm_Q = FE3_20_norm_Q,
	@PE3_23 = PE3_23,
	@TE3_21 = TE3_21,
	@QE3_23 = QE3_23,
	@FE3_21 = FE3_21,
	@FE3_21_norm = FE3_21_norm,
	@FE3_21_norm_Q = FE3_21_norm_Q,
	@PE3_24 = PE3_24,
	@TE3_22 = TE3_22,
	@QE3_24 = QE3_24,
	@FE3_22 = FE3_22,
	@FE3_22_norm = FE3_22_norm,
	@FE3_22_norm_Q = FE3_22_norm_Q
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum02] ORDER BY dt DESC

	WHILE ISDATE(@dt)<>0 
	BEGIN

		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 7, @Value = @PE1_2
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 8, @Value = @TE1_2
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 9, @Value = @QE1_2
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 10, @Value = @FE1_2
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 11, @Value = @FE1_2_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 12, @Value = @FE1_2_norm_Q 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 13, @Value = @PE3_20 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 14, @Value = @TE3_18 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 15, @Value = @QE3_20 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 16, @Value = @FE3_18 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 17, @Value = @FE3_18_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 18, @Value = @FE3_18_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 19, @Value = @PE3_22 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 20, @Value = @TE3_20 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 21, @Value = @QE3_22 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 22, @Value = @FE3_20 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 23, @Value = @FE3_20_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 24, @Value = @FE3_20_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 25, @Value = @PE3_23 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 26, @Value = @TE3_21 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 27, @Value = @QE3_23 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 28, @Value = @FE3_21 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 29, @Value = @FE3_21_norm
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 30, @Value = @FE3_21_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 31, @Value = @PE3_24 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 32, @Value = @TE3_22 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 33, @Value = @QE3_24 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 34, @Value = @FE3_22 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 35, @Value = @FE3_22_norm
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 36, @Value = @FE3_22_norm_Q

		DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum02] WHERE dt=@dt

		SELECT TOP 1
		@dt = dt,
		@PE1_2 = PE1_2,
		@TE1_2 = TE1_2,
		@QE1_2 = QE1_2,
		@FE1_2 = FE1_2,
		@FE1_2_norm = FE1_2_norm,
		@FE1_2_norm_Q = FE1_2_norm_Q,
		@PE3_20 = PE3_20,
		@TE3_18 = TE3_18,
		@QE3_20 = QE3_20,
		@FE3_18 = FE3_18,
		@FE3_18_norm = FE3_18_norm,
		@FE3_18_norm_Q = FE3_18_norm_Q,
		@PE3_22 = PE3_22,
		@TE3_20 = TE3_20,
		@QE3_22 = QE3_22,
		@FE3_20 = FE3_20,
		@FE3_20_norm = FE3_20_norm,
		@FE3_20_norm_Q = FE3_20_norm_Q,
		@PE3_23 = PE3_23,
		@TE3_21 = TE3_21,
		@QE3_23 = QE3_23,
		@FE3_21 = FE3_21,
		@FE3_21_norm = FE3_21_norm,
		@FE3_21_norm_Q = FE3_21_norm_Q,
		@PE3_24 = PE3_24,
		@TE3_22 = TE3_22,
		@QE3_24 = QE3_24,
		@FE3_22 = FE3_22,
		@FE3_22_norm = FE3_22_norm,
		@FE3_22_norm_Q = FE3_22_norm_Q
		FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum02] ORDER BY dt DESC
	END

	RETURN 1
END



GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcSumDateTransfer03]    Script Date: 29.11.2016 12:26:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [[dbo].].[gcSumDateTransfer03] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE3_5 float,
		@TE3_5 float,
		@QE3_5 float,
		@FE3_5 float,
		@FE3_5_norm float,
		@FE3_5_norm_Q float,
		@PE3_6 float,
		@TE3_6 float,
		@FE3_6 float,
		@FE3_6_norm float,
		@FE3_6_norm_Q float,
		@PE3_7 float,
		@TE3_7 float,
		@FE3_7 float,
		@FE3_7_norm float,
		@FE3_7_norm_Q float,
		@PE3_8 float,
		@TE3_8 float,
		@QE3_6 float,
		@FE3_8 float,
		@FE3_8_norm float,
		@FE3_8_norm_Q float,
		@QE3_7 float,
		@QE3_8 float,
		@QE3_9 float

	SELECT TOP 1
	@dt = dt,
	@PE3_5 = PE3_5,
	@TE3_5 = TE3_5, 
	@QE3_5 = QE3_5,
	@FE3_5 = FE3_5,
	@FE3_5_norm = FE3_5_norm,
	@FE3_5_norm_Q = FE3_5_norm_Q,
	@PE3_6 = PE3_6,
	@TE3_6 = TE3_6,
	@FE3_6 = FE3_6, 
	@FE3_6_norm = FE3_6_norm,
	@FE3_6_norm_Q = FE3_6_norm_Q,
	@PE3_7 = PE3_7,
	@TE3_7 = TE3_7,
	@FE3_7 = FE3_7,
	@FE3_7_norm = FE3_7_norm,
	@FE3_7_norm_Q = FE3_7_norm_Q,
	@PE3_8 = PE3_8,
	@TE3_8 = TE3_8,
	@QE3_6 = QE3_6,
	@FE3_8 = FE3_8,
	@FE3_8_norm = FE3_8_norm,
	@FE3_8_norm_Q = FE3_8_norm_Q,
	@QE3_7 = QE3_7,
	@QE3_8 = QE3_8, 
	@QE3_9 = QE3_9
	FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum03] ORDER BY dt DESC

	WHILE ISDATE(@dt)<>0 
	BEGIN
	
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 37, @Value = @PE3_5
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 38, @Value = @TE3_5 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 39, @Value = @QE3_5 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 40, @Value = @FE3_5 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 41, @Value = @FE3_5_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 42, @Value = @FE3_5_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 43, @Value = @PE3_6 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 44, @Value = @TE3_6 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 45, @Value = @FE3_6 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 46, @Value = @FE3_6_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 47, @Value = @FE3_6_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 48, @Value = @PE3_7 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 49, @Value = @TE3_7 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 50, @Value = @FE3_7 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 51, @Value = @FE3_7_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 52, @Value = @FE3_7_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 53, @Value = @PE3_8 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 54, @Value = @TE3_8 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 55, @Value = @QE3_6 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 56, @Value = @FE3_8 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 57, @Value = @FE3_8_norm 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 58, @Value = @FE3_8_norm_Q
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 59, @Value = @QE3_7 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 60, @Value = @QE3_8 
		EXECUTE [KRR-PA-ISA95_PRODUCTION].[dbo].[UpdateSumData] @dt = @dt, @ID = 61, @Value = @QE3_9 

		DELETE FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum03] WHERE dt=@dt

		SELECT TOP 1
		@dt = dt,
		@PE3_5 = PE3_5,
		@TE3_5 = TE3_5, 
		@QE3_5 = QE3_5,
		@FE3_5 = FE3_5,
		@FE3_5_norm = FE3_5_norm,
		@FE3_5_norm_Q = FE3_5_norm_Q,
		@PE3_6 = PE3_6,
		@TE3_6 = TE3_6,
		@FE3_6 = FE3_6, 
		@FE3_6_norm = FE3_6_norm,
		@FE3_6_norm_Q = FE3_6_norm_Q,
		@PE3_7 = PE3_7,
		@TE3_7 = TE3_7,
		@FE3_7 = FE3_7,
		@FE3_7_norm = FE3_7_norm,
		@FE3_7_norm_Q = FE3_7_norm_Q,
		@PE3_8 = PE3_8,
		@TE3_8 = TE3_8,
		@QE3_6 = QE3_6,
		@FE3_8 = FE3_8,
		@FE3_8_norm = FE3_8_norm,
		@FE3_8_norm_Q = FE3_8_norm_Q,
		@QE3_7 = QE3_7,
		@QE3_8 = QE3_8, 
		@QE3_9 = QE3_9
		FROM [KRR-PA-CNT-GasForISA95].[dbo].[PlcSum03] ORDER BY dt DESC
	END

	RETURN 1
END



GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcTransferToISA95]    Script Date: 29.11.2016 12:26:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [[dbo].].[gcTransferToISA95]
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
	SELECT  ID, dt, Value  FROM SumData WHERE  ID IN (@peID, @teID, @qeID, @feID, @fenID, @feqID) 
	OPEN @CURSOR

	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF NOT EXISTS(SELECT sr.ID FROM SegmentResponse sr,  EquipmentActual ea WHERE ActualStartTime=@dt AND sr.ID=ea.SegmentResponseID AND ea.EquipmentID=@eID AND sr.SegmentState='1')
       	BEGIN
       		INSERT INTO SegmentResponse (ActualStartTime, ActualEndTime, SegmentState) VALUES (@dt, @dt+1/24, '1')
			SELECT @sID = @@IDENTITY 
			--SELECT @ecID=EquipmentClassID FROM Equipment WHERE ID=@eID
			--INSERT INTO EquipmentActual (EquipmentClassID, EquipmentID, SegmentResponseID) VALUES (@ecID, @eID, @sID)
			--INSERT INTO MaterialActual (MaterialClassID, MaterialDefinitionID, MaterialUse, SegmentResponseID) VALUES (@mcID, @mdID, @Value, @mu,@sID)
			SELECT @mID = @@IDENTITY
			IF @fenID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @fenID 
				UPDATE MaterialActual SET Quantity = @TValue WHERE ID=@mID
			END
			IF @peID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @peID 
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'PE')
			END
			IF @teID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @teID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'TE')
			END
			IF @qeID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @qeID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'QE')
			END
			IF @feID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @feID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE')
			END
			IF @feqID <> 0
			BEGIN
				SELECT @TValue = Value FROM SumData WHERE dt= @dt AND ID = @feqID
				INSERT INTO MaterialActualProperty (MaterialActual, Quantity, Description) VALUES (@mID, @TValue, 'FE_norm_Q')
			END
       	END
	FETCH NEXT FROM @CURSOR INTO @ID, @dt, @Value
	END
	CLOSE @CURSOR
END

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[gcUpdateCurData]    Script Date: 29.11.2016 12:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [[dbo].].[gcUpdateCurData] 
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [KRR-PA-ISA95_PRODUCTION].[dbo].[CurData] WHERE ID=@ID) = 0
		INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].[CurData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].[CurData] SET dt=@dt, Value=@VALUE	WHERE ID=@ID
END

GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [[dbo].].[UpdateSumData]    Script Date: 29.11.2016 12:27:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [[dbo].].[UpdateSumData]
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [KRR-PA-ISA95_PRODUCTION].[dbo].[SumData] WHERE ID=@ID AND dt=@dt) = 0
		INSERT INTO [KRR-PA-ISA95_PRODUCTION].[dbo].[SumData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [KRR-PA-ISA95_PRODUCTION].[dbo].[SumData] SET Value=@VALUE	WHERE ID=@ID AND dt=@dt
END

GO

