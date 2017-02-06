USE [KRR-PA-CNT-GasForISA95]
GO
/****** Object:  StoredProcedure [dbo].[gcCurrTransfer]    Script Date: 2/6/2017 2:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[gcCurrTransfer]

AS
BEGIN

	SET NOCOUNT ON;
	EXEC gcCurDateTransfer01
	EXEC gcCurDateTransfer02
	EXEC gcCurDateTransfer03
	EXEC gcCurDateTransfer04
	EXEC gcCurDateTransfer05
	EXEC gcCurDateTransfer07
--	EXEC gcCurDateTransfer08
--	EXEC gcCurDateTransfer09
	EXEC gcCurDateTransfer10
	EXEC gcCurDateTransfer11
	EXEC gcCurDateTransferOlvia

END
