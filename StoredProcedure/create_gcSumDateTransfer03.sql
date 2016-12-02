--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer03]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer03]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer03]
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
	FROM [dbo].[PlcSum03] ORDER BY dt DESC

	WHILE ISDATE(@dt)<>0 
	BEGIN
	
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 37, @Value = @PE3_5
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 38, @Value = @TE3_5 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 39, @Value = @QE3_5 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 40, @Value = @FE3_5 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 41, @Value = @FE3_5_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 42, @Value = @FE3_5_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 43, @Value = @PE3_6 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 44, @Value = @TE3_6 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 45, @Value = @FE3_6 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 46, @Value = @FE3_6_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 47, @Value = @FE3_6_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 48, @Value = @PE3_7 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 49, @Value = @TE3_7 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 50, @Value = @FE3_7 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 51, @Value = @FE3_7_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 52, @Value = @FE3_7_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 53, @Value = @PE3_8 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 54, @Value = @TE3_8 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 55, @Value = @QE3_6 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 56, @Value = @FE3_8 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 57, @Value = @FE3_8_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 58, @Value = @FE3_8_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 59, @Value = @QE3_7 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 60, @Value = @QE3_8 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 61, @Value = @QE3_9 

		DELETE FROM [dbo].[PlcSum03] WHERE dt=@dt

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
		FROM [dbo].[PlcSum03] ORDER BY dt DESC
	END

	RETURN 1

END
GO