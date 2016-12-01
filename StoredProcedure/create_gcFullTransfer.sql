GO
USE [KRR-PA-ISA95_PRODUCTION]
GO

/****** Object:  StoredProcedure [dbo].[gcFullTransfer]    Script Date: 29.11.2016 12:26:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[gcFullTransfer]

AS
BEGIN

	SET NOCOUNT ON;
        EXEC gcCurDateTransfer01
	EXEC gcSumDateTransfer01
	EXEC gcTransferToISA95 10010,1,2,3,4,5,6,10000, 10001,'consumed'
END
