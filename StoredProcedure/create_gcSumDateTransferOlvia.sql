--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcSumDateTransferOlvia]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcSumDateTransferOlvia]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcSumDateTransferOlvia]
AS
BEGIN
	SET NOCOUNT ON;

    DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE4a1 float, 
		@TE1a1 float, 
		@QE1a1 float, 
		@FE1a1_norm float, 
		@FE1a1_norm_Q float,
		@PE4a2 float, 
		@TE1a2 float, 
		@QE1a2 float, 
		@FE1a2_norm float, 
		@FE1a2_norm_Q float,
		@PE5a2 float,
		@PE6a2 float

	SELECT TOP 1
	@dt = dt,
	@PE4a1 = PE4a1,
	@TE1a1 = TE1a1,
	@QE1a1 = QE1a1,
	@FE1a1_norm = FE1a1_norm,
	@FE1a1_norm_Q = FE1a1_norm_Q,
	@PE4a2 = PE4a2,
	@TE1a2 = TE1a2,
	@QE1a2 = QE1a2,
	@FE1a2_norm = FE1a2_norm,
	@FE1a2_norm_Q = FE1a2_norm_Q,
	@PE5a2 = PE5a2,
	@PE6a2 = PE6a2 
	FROM [dbo].[PlcSumOlvia] ORDER BY dt DESC

	
	WHILE @@ROWCOUNT<>0 
	BEGIN

	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 219, @Value = @PE4a1
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 220, @Value = @TE1a1
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 221, @Value = @QE1a1
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 222, @Value = @FE1a1_norm
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 223, @Value = @FE1a1_norm_Q
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 224, @Value = @PE4a2
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 225, @Value = @TE1a2
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 226, @Value = @QE1a2
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 227, @Value = @FE1a2_norm
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 228, @Value = @FE1a2_norm_Q
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 229, @Value = @PE5a2
	EXECUTE [dbo].[gcUpdateSumData] @dt = @dt, @ID = 230, @Value = @PE6a2

		DELETE FROM [dbo].[PlcSumOlvia] WHERE dt=@dt

		SELECT TOP 1
			@dt = dt,
			@PE4a1 = PE4a1,
			@TE1a1 = TE1a1,
			@QE1a1 = QE1a1,
			@FE1a1_norm = FE1a1_norm,
			@FE1a1_norm_Q = FE1a1_norm_Q,
			@PE4a2 = PE4a2,
			@TE1a2 = TE1a2,
			@QE1a2 = QE1a2,
			@FE1a2_norm = FE1a2_norm,
			@FE1a2_norm_Q = FE1a2_norm_Q,
			@PE5a2 = PE5a2,
			@PE6a2 = PE6a2 
			FROM [dbo].[PlcSumOlvia] ORDER BY dt DESC
	END

	RETURN 1
END
GO