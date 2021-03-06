﻿--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcCurDateTransfer01]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcCurDateTransfer01]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[gcCurDateTransfer01] 

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @dt datetime, 
		@ID int,
		@VALUE float,
		@PE1_1 float, 
		@TE1_1 float, 
		@QE1_1 float, 
		@FE1_1 float, 
		@FE1_1_norm float, 
		@FE1_1_norm_Q float

	SELECT TOP 1
	@dt = dt,
	@PE1_1 = PE1_1, 
	@TE1_1 = TE1_1, 
	@QE1_1 = QE1_1, 
	@FE1_1 = FE1_1, 
	@FE1_1_norm = FE1_1_norm, 
	@FE1_1_norm_Q = FE1_1_norm_Q
	FROM [dbo].[PlcCur01] ORDER BY dt DESC

	IF ISDATE(@dt)=0  RETURN -1
	
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 1, @Value = @PE1_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 2, @Value = @TE1_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 3, @Value = @QE1_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 4, @Value = @FE1_1
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 5, @Value = @FE1_1_norm
	EXECUTE [dbo].[gcUpdateCurData] @dt = @dt, @ID = 6, @Value = @FE1_1_norm_Q

	DELETE FROM [dbo].[PlcCur01] WHERE dt<=@dt

	RETURN 1
END

GO
