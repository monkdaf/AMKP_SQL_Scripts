--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer08]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer08]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer08]
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
	FROM [dbo].[PlcSum08] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 139, @Value = @PE3_14
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 140, @Value = @PE3_15
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 141, @Value = @PE3_16
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 142, @Value = @TE3_14
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 143, @Value = @FE3_14
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 144, @Value = @QE3_16
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 145, @Value = @FE3_14_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 146, @Value = @FE3_14_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 147, @Value = @PE3_17
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 148, @Value = @TE3_15
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 149, @Value = @FE3_15
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 150, @Value = @QE3_17
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 151, @Value = @FE3_15_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 152, @Value = @FE3_15_norm_Q

		DELETE FROM [dbo].[PlcSum08] WHERE dt=@dt

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
			FROM [dbo].[PlcSum08] ORDER BY dt DESC
	END

	RETURN 1
END
GO