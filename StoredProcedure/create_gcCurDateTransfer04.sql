USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcCurDateTransfer04]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcCurDateTransfer04]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcCurDateTransfer04] 

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
	FROM [dbo].[PlcCur04] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 62, @Value = @PE3_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 63, @Value = @TE3_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 64, @Value = @QE3_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 65, @Value = @FE3_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 66, @Value = @FE3_1_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 67, @Value = @FE3_1_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 68, @Value = @PE3_2
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 69, @Value = @TE3_2
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 70, @Value = @FE3_2
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 71, @Value = @FE3_2_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 72, @Value = @FE3_2_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 73, @Value = @PE3_3
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 74, @Value = @TE3_3
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 75, @Value = @FE3_3
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 76, @Value = @FE3_3_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 77, @Value = @FE3_3_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 78, @Value = @PE3_4
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 79, @Value = @TE3_4
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 80, @Value = @FE3_4
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 81, @Value = @FE3_4_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 82, @Value = @FE3_4_norm_Q
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 83, @Value = @QE3_2
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 84, @Value = @QE3_3
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 85, @Value = @QE3_4
 

	DELETE FROM [dbo].[PlcCur04] WHERE dt<=@dt

	RETURN 1

END

GO
