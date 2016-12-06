--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer07]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer07]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer07]
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
	FROM [dbo].[PlcSum07] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 104, @Value = @PE2_1
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 105, @Value = @TE2_1
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 106, @Value = @FE2_1
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 107, @Value = @FE2_1_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 108, @Value = @PE2_2
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 109, @Value = @TE2_2
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 110, @Value = @FE2_2
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 111, @Value = @FE2_2_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 112, @Value = @PE2_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 113, @Value = @TE2_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 114, @Value = @FE2_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 115, @Value = @FE2_3_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 116, @Value = @PE3_18
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 117, @Value = @TE3_16
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 118, @Value = @FE3_16
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 119, @Value = @QE3_18
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 120, @Value = @FE3_16_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 121, @Value = @FE3_16_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 122, @Value = @PE3_19
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 123, @Value = @TE3_17
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 124, @Value = @FE3_17
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 125, @Value = @QE3_19
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 126, @Value = @FE3_17_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 127, @Value = @FE3_17_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 128, @Value = @PE3_21
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 129, @Value = @TE3_19
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 130, @Value = @FE3_19
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 131, @Value = @QE3_21
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 132, @Value = @FE3_19_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 133, @Value = @FE3_19_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 134, @Value = @PE3_25
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 135, @Value = @TE3_23
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 136, @Value = @FE3_23
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 137, @Value = @FE3_23_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 138, @Value = @FE3_23_norm_Q

		DELETE FROM [dbo].[PlcSum07] WHERE dt=@dt

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
			FROM [dbo].[PlcSum07] ORDER BY dt DESC
	END

	RETURN 1
END
GO