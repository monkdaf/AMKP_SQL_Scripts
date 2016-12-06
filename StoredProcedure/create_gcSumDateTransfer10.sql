--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransfer10]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransfer10]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransfer10]
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
	FROM [dbo].[PlcSum10] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 171, @Value = @PE3_13
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 172, @Value = @TE3_13
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 173, @Value = @FE3_13
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 174, @Value = @QE3_15
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 175, @Value = @FE3_13_norm
		EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 176, @Value = @FE3_13_norm_Q
	
		DELETE FROM [dbo].[PlcSum10] WHERE dt=@dt
	
		SELECT TOP 1
			@dt = dt,
			@PE3_13 = PE3_13,
			@TE3_13 = TE3_13, 
			@FE3_13 = FE3_13,
			@QE3_15 = QE3_15,
			@FE3_13_norm = FE3_13_norm,
			@FE3_13_norm_Q = FE3_13_norm_Q
			FROM [dbo].[PlcSum10] ORDER BY dt DESC
	END

	RETURN 1
END
GO