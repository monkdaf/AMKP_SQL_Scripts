﻿
USE [KRR-PA-CNT-GasForISA95]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcFullTransfer12]

AS
BEGIN
	SET NOCOUNT ON;

	EXEC gcSumDateTransferOlvia
	-- FE1a1
	EXEC gcTransferToISA95 10210,219,220,221,0,222,223,10000, 10000,'consumed'
	-- FE1a2
	EXEC gcTransferToISA95 10211,224,225,226,0,227,228,10000, 10000,'consumed'
	-- PE5a2
	EXEC gcTransferToISA95 10212,229,0,0,0,0,0,10000, 10000,'consumed'
	-- PE5a3
	EXEC gcTransferToISA95 10213,230,0,0,0,0,0,10000, 10000,'consumed'

END
