
USE [KRR-PA-CNT-GasForISA95]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcFullTransfer_day_month]

AS
BEGIN

	SET NOCOUNT ON;

	-- day --
	EXEC gcFullTransfer_day

	-- month --
	EXEC gcFullTransfer_month

END
