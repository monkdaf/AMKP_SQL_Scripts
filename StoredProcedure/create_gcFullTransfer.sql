--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcFullTransfer]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcFullTransfer]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcFullTransfer]

AS
BEGIN

	SET NOCOUNT ON;
	EXEC gcCurDateTransfer01
	EXEC gcSumDateTransfer01
	EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10000, 10001,'consumed'
END
