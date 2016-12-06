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
--  @eID int, @peID int, @teID int, @qeID int, @feID int, @fenID int, @feqID int,
--  @mcID int, @mdID int, @mu nvarchar(50)
-- mcID - materialClass ID: 10000 - Газы
-- mвID - materialDefinition ID: Кислород - 10000, Азот - 10001, Сжатый воздух - 10002

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer01
--	EXEC gcSumDateTransfer01
--	-- FE1.1
--	EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10000, 10001,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer04
--	EXEC gcSumDateTransfer04
--	-- FE3.1
--	EXEC gcTransferToISA95 10071,62,63,64,65,66,67,10000, 10000,'consumed'
--	-- FE3.2
--	EXEC gcTransferToISA95 10077,68,69,0,70,71,72,10000, 10000,'consumed'
--	-- FE3.3
--	EXEC gcTransferToISA95 10078,73,74,0,75,76,77,10000, 10000,'consumed'
--	-- FE3.4
--	EXEC gcTransferToISA95 10087,78,79,0,80,81,82,10000, 10000,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer07
--	EXEC gcSumDateTransfer07
--	-- FE2.1
--	EXEC gcTransferToISA95 10113,104,105,0,106,107,0,10000, 10002,'consumed'
--	-- FE2.2
--	EXEC gcTransferToISA95 10117,108,109,0,110,111,0,10000, 10002,'consumed'
--	-- FE2.3
--	EXEC gcTransferToISA95 10121,112,113,0,114,115,0,10000, 10002,'consumed'

	SET NOCOUNT ON;
	EXEC gcCurDateTransfer10
	EXEC gcSumDateTransfer10
	-- FE3.13
	EXEC gcTransferToISA95 10180,171,172,174,173,175,176,10000, 10000,'consumed'

END
