﻿USE [KRR-PA-ISA95_PRODUCTION]
GO
SET NOCOUNT ON
GO
SET QUOTED_IDENTIFIER ON
GO

UPDATE [dbo].[MaterialClass] 
  SET [Description]=N'Газы', [Code]='Gas'
  Where ID=10000
GO