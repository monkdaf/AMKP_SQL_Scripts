
USE [KRR-PA-CNT-GasForISA95]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcFullTransfer04]

AS
BEGIN
	SET NOCOUNT ON;

	EXEC gcSumDateTransfer04
	-- FE3.1
	EXEC gcTransferToISA95 10071,62,63,64,65,66,67,10000, 10000,'consumed'
	-- FE3.2  ---- not err: 1
	EXEC gcTransferToISA95 10077,68,69,0,70,71,72,10000, 10000,'consumed'
	-- FE3.3  ---- not err: 1
	EXEC gcTransferToISA95 10078,73,74,0,75,76,77,10000, 10000,'consumed'
	-- FE3.4  ---- not err: 1
	EXEC gcTransferToISA95 10087,78,79,0,80,81,82,10000, 10000,'consumed'
	-- QE3.2
	EXEC gcTransferToISA95 10088,0,0,83,0,0,0,10000, 10000,'consumed'
	-- QE3.3
	EXEC gcTransferToISA95 10089,0,0,84,0,0,0,10000, 10000,'consumed'
	-- QE3.4
	EXEC gcTransferToISA95 10090,0,0,85,0,0,0,10000, 10000,'consumed'

END
