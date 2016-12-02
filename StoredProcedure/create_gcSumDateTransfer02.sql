--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer02]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer02]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer02]
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
	FROM [dbo].[PlcSum02] ORDER BY dt DESC

	WHILE ISDATE(@dt)<>0 
	BEGIN

		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 7, @Value = @PE1_2
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 8, @Value = @TE1_2
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 9, @Value = @QE1_2
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 10, @Value = @FE1_2
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 11, @Value = @FE1_2_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 12, @Value = @FE1_2_norm_Q 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 13, @Value = @PE3_20 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 14, @Value = @TE3_18 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 15, @Value = @QE3_20 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 16, @Value = @FE3_18 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 17, @Value = @FE3_18_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 18, @Value = @FE3_18_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 19, @Value = @PE3_22 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 20, @Value = @TE3_20 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 21, @Value = @QE3_22 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 22, @Value = @FE3_20 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 23, @Value = @FE3_20_norm 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 24, @Value = @FE3_20_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 25, @Value = @PE3_23 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 26, @Value = @TE3_21 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 27, @Value = @QE3_23 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 28, @Value = @FE3_21 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 29, @Value = @FE3_21_norm
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 30, @Value = @FE3_21_norm_Q
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 31, @Value = @PE3_24 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 32, @Value = @TE3_22 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 33, @Value = @QE3_24 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 34, @Value = @FE3_22 
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 35, @Value = @FE3_22_norm
		EXECUTE [dbo].[UpdateSumData] @dt = @dt, @ID = 36, @Value = @FE3_22_norm_Q

		DELETE FROM [dbo].[PlcSum02] WHERE dt=@dt

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
		FROM [dbo].[PlcSum02] ORDER BY dt DESC
	END

	RETURN 1

END
GO