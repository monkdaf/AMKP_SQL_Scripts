/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [KRR-PA-CNT-GasForISA95]
GO
/****** Object:  StoredProcedure [dbo].[gcCurDateTransfer08]    Script Date: 9/27/2017 12:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[gcCurDateTransfer08] 

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
		@FE3_15_norm_Q float,
		@PE3_29 float,
		@TE3_27 float,
		@FE3_27 float,
		@FE3_27_norm float,
		@FE3_27_norm_Q float


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
	@FE3_15_norm_Q = FE3_15_norm_Q,
	@PE3_29 = PE3_29,
	@TE3_27 = TE3_27,
	@FE3_27 = FE3_27,
	@FE3_27_norm = FE3_27_norm,
	@FE3_27_norm_Q = FE3_27_norm_Q
	FROM [dbo].[PlcCur08] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 139, @Value = @PE3_14
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 140, @Value = @PE3_15
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 141, @Value = @PE3_16
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 142, @Value = @TE3_14
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 143, @Value = @FE3_14
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 144, @Value = @QE3_16
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 145, @Value = @FE3_14_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 146, @Value = @FE3_14_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 147, @Value = @PE3_17
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 148, @Value = @TE3_15
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 149, @Value = @FE3_15
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 150, @Value = @QE3_17
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 151, @Value = @FE3_15_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 152, @Value = @FE3_15_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 204, @Value = @PE3_29
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 205, @Value = @TE3_27
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 206, @Value = @FE3_27
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 207, @Value = @FE3_27_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 208, @Value = @FE3_27_norm_Q

	
 	DELETE FROM [dbo].[PlcCur08] WHERE dt<=@dt

	RETURN 1

END

