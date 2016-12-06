--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer05]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer05]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer05]
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
	FROM [dbo].[PlcSum05] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 86, @Value  = @PE1_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 87, @Value  = @TE1_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 88, @Value  = @FE1_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 89, @Value  = @QE1_3
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 90, @Value  = @FE1_3_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 91, @Value  = @FE1_3_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 92, @Value  = @PE1_4
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 93, @Value  = @TE1_4
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 94, @Value  = @FE1_4
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 95, @Value  = @FE1_4_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 96, @Value  = @FE1_4_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 97, @Value  = @PE3_9
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 98, @Value  = @TE3_9
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 99, @Value  = @FE3_9
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 100, @Value = @QE3_10
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 101, @Value = @FE3_9_norm
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 102, @Value = @FE3_9_norm_Q
		EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 103, @Value = @QE3_11
	
		DELETE FROM [dbo].[PlcSum05] WHERE dt=@dt
	
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
			FROM [dbo].[PlcSum05] ORDER BY dt DESC
	END
	
	RETURN 1
END
GO