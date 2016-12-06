--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer11]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer11]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer11]
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
	FROM [dbo].[PlcSum11] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 177, @Value = @PE_7103_04A_P06
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 178, @Value = @TE_7103_04A_T01
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 179, @Value = @FE_7103_04A_F02
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 180, @Value = @QE_7101_10_A66 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 181, @Value = @FE_7103_04A_F02_norm 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 182, @Value = @FE_7103_04A_F02_norm_Q
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 183, @Value = @PE_7103_04B_P06 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 184, @Value = @TE_7103_04B_T01 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 185, @Value = @FE_7103_04B_F02 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 186, @Value = @FE_7103_04B_F02_norm
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 187, @Value = @FE_7103_04B_F02_norm_Q 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 188, @Value = @PE_7105_04_P06 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 189, @Value = @TE_7105_04_T01 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 190, @Value = @FE_7105_04_F02 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 191, @Value = @FE_7105_04_F02_norm 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 192, @Value = @FE_7105_04_F02_norm_Q 
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 193, @Value = @PE_7303_04_P06
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 194, @Value = @TE_7303_04_T01
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 195, @Value = @FE_7303_04_F02
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 196, @Value = @QE_7303_10_A56
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 197, @Value = @FE_7303_04_F02_norm
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 198, @Value = @FE_7303_04_F02_norm_Q  

		DELETE FROM [dbo].[PlcSum11] WHERE dt=@dt

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
			FROM [dbo].[PlcSum11] ORDER BY dt DESC
	END

	RETURN 1
END
GO