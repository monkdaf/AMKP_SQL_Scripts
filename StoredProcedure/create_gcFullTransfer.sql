USE [KRR-PA-CNT-GasForISA95]
GO
/****** Object:  StoredProcedure [dbo].[gcFullTransfer]    Script Date: 2/6/2017 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[gcFullTransfer]

AS
BEGIN
--  @eID int, @peID int, @teID int, @qeID int, @feID int, @fenID int, @feqID int,
--  @mcID int, @mdID int, @mu nvarchar(50)
-- mcID - materialClass ID: 10000 - Газы
-- mвID - materialDefinition ID: Кислород - 10000, Азот - 10001, Сжатый воздух - 10002

	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer01
	EXEC gcSumDateTransfer01
--	-- FE1.1
	EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10000, 10001,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer02
	EXEC gcSumDateTransfer02
--	-- FE1.2
	EXEC gcTransferToISA95 10016,7,8,9,10,11,12,10000, 10001,'consumed'
--	-- FE3.18
	EXEC gcTransferToISA95 10022,13,14,15,16,17,18,10000, 10000,'consumed'
--	-- FE3.20
	EXEC gcTransferToISA95 10028,19,20,21,22,23,24,10000, 10000,'consumed'
--	-- FE3.21
	EXEC gcTransferToISA95 10034,25,26,27,28,29,30,10000, 10000,'consumed'
--	-- FE3.22
	EXEC gcTransferToISA95 10040,31,32,33,34,35,36,10000, 10000,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer03
	EXEC gcSumDateTransfer03
--	-- FE3.5
	EXEC gcTransferToISA95 10046,37,38,39,40,41,42,10000, 10000,'consumed'
--	-- FE3.6
	EXEC gcTransferToISA95 10052,43,44,0,45,46,47,10000, 10000,'consumed'
--	-- FE3.7
	EXEC gcTransferToISA95 10053,48,49,0,50,51,52,10000, 10000,'consumed'
--	-- FE3.8
	EXEC gcTransferToISA95 10062,53,54,55,56,57,58,10000, 10000,'consumed'
--	-- QE3.7
	EXEC gcTransferToISA95 10063,0,0,59,0,0,0,10000, 10000,'consumed'
	-- QE3.8
	EXEC gcTransferToISA95 10064,0,0,60,0,0,0,10000, 10000,'consumed'
--	-- QE3.9
	EXEC gcTransferToISA95 10065,0,0,61,0,0,0,10000, 10000,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer04
	EXEC gcSumDateTransfer04
--	-- FE3.1
	EXEC gcTransferToISA95 10071,62,63,64,65,66,67,10000, 10000,'consumed'
--	-- FE3.2  ---- not err: 1
	EXEC gcTransferToISA95 10077,68,69,0,70,71,72,10000, 10000,'consumed'
--	-- FE3.3  ---- not err: 1
	EXEC gcTransferToISA95 10078,73,74,0,75,76,77,10000, 10000,'consumed'
--	-- FE3.4  ---- not err: 1
	EXEC gcTransferToISA95 10087,78,79,0,80,81,82,10000, 10000,'consumed'
--	-- QE3.2
	EXEC gcTransferToISA95 10088,0,0,83,0,0,0,10000, 10000,'consumed'
--	-- QE3.3
	EXEC gcTransferToISA95 10089,0,0,84,0,0,0,10000, 10000,'consumed'
--	-- QE3.4
	EXEC gcTransferToISA95 10090,0,0,85,0,0,0,10000, 10000,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer05
	EXEC gcSumDateTransfer05
--	-- FE1.3
	EXEC gcTransferToISA95 10095,86,87,89,88,90,91,10000, 10001,'consumed'
--	-- FE1.4
	EXEC gcTransferToISA95 10101,92,93,0,94,95,96,10000, 10001,'consumed'
--	-- FE3.9
	EXEC gcTransferToISA95 10107,97,98,100,99,101,102,10000, 10000,'consumed'
--	-- QE3.11
	EXEC gcTransferToISA95 10108,0,0,103,0,0,0,10000, 10000,'consumed'

--	SET NOCOUNT ON;
--	EXEC gcCurDateTransfer07
	EXEC gcSumDateTransfer07
--	-- FE2.1
	EXEC gcTransferToISA95 10113,104,105,0,106,107,0,10000, 10002,'consumed'
--	-- FE2.2
	EXEC gcTransferToISA95 10117,108,109,0,110,111,0,10000, 10002,'consumed'
--	-- FE2.3
	EXEC gcTransferToISA95 10121,112,113,0,114,115,0,10000, 10002,'consumed'
--	-- FE3.16
	EXEC gcTransferToISA95 10125,116,117,119,118,120,121,10000, 10000,'consumed'
--	-- FE3.17
	EXEC gcTransferToISA95 10131,122,123,125,124,126,127,10000, 10000,'consumed'
--	-- FE3.19
	EXEC gcTransferToISA95 10137,128,129,131,130,132,133,10000, 10000,'consumed'
--	-- FE3.23
	EXEC gcTransferToISA95 10143,134,135,0,136,137,138,10000, 10000,'consumed'
--	-- FE3.26
--	EXEC gcTransferToISA95 10144,199,200,0,201,202,203,10000, 10000,'consumed'

	--SET NOCOUNT ON;
--	EXEC gcCurDateTransfer10
	EXEC gcSumDateTransfer10
	-- FE3.13
	EXEC gcTransferToISA95 10180,171,172,174,173,175,176,10000, 10000,'consumed'

	EXEC gcSumDateTransfer11
--	-- FE_7103_04A_F02
	EXEC gcTransferToISA95 10181,177,178,180,179,181,182,10000, 10000,'consumed'
--	-- FE_7103_04B_F02
	EXEC gcTransferToISA95 10182,183,184,0,185,186,187,10000, 10000,'consumed'
--	-- FE_7105_04_F02
	EXEC gcTransferToISA95 10197,188,189,0,190,191,192,10000, 10000,'consumed'
--	-- FE_7303_04_F02
	EXEC gcTransferToISA95 10202,193,194,196,195,197,198,10000, 10001,'consumed'

	--SET NOCOUNT ON;
--	EXEC gcCurDateTransferOlvia
	EXEC gcSumDateTransferOlvia
	-- FE1a1
	EXEC gcTransferToISA95 10210,219,220,221,0,222,223,10000, 10000,'consumed'
	-- FE1a2
	EXEC gcTransferToISA95 10211,224,225,226,0,227,228,10000, 10000,'consumed'
	-- PE5a2
	EXEC gcTransferToISA95 10212,229,0,0,0,0,0,10000, 10000,'consumed'
	-- PE5a3
	EXEC gcTransferToISA95 10213,230,0,0,0,0,0,10000, 10000,'consumed'

--  @eID int, @peID int, @teID int, @qeID int, @feID int, @fenID int, @feqID int,
--  @mcID int, @mdID int, @mu nvarchar(50)
-- mcID - materialClass ID: 10000 - Газы
-- mвID - materialDefinition ID: Кислород - 10000, Азот - 10001, Сжатый воздух - 10002

END
