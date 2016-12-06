--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer09]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer09]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer09]
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
	FROM [dbo].[PlcSum09] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 153, @Value = @PE3_10
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 154, @Value = @TE3_10
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 155, @Value = @FE3_10
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 156, @Value = @QE3_12
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 157, @Value = @FE3_10_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 158, @Value = @FE3_10_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 159, @Value = @PE3_11
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 160, @Value = @TE3_11
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 161, @Value = @FE3_11
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 162, @Value = @QE3_13
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 163, @Value = @FE3_11_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 164, @Value = @FE3_11_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 165, @Value = @PE3_12
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 166, @Value = @TE3_12
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 167, @Value = @FE3_12
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 168, @Value = @QE3_14
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 169, @Value = @FE3_12_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 170, @Value = @FE3_12_norm_Q

		DELETE FROM [dbo].[PlcSum09] WHERE dt=@dt

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
			FROM [dbo].[PlcSum09] ORDER BY dt DESC
	END

	RETURN 1
END
GO