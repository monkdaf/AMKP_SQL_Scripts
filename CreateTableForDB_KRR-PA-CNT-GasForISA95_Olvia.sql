--- use DB as default one
USE [KRR-PA-CNT-GasForISA95]
GO

--- create table for recive data from PLC
CREATE TABLE [dbo].[PlcCurOlvia](
	[dt] [datetime] NOT NULL,
	[PE4a2] [real] NOT NULL,
	[TE1a2] [real] NOT NULL,
	[QE1a2] [real] NOT NULL,
	[FE1a2_norm] [real] NOT NULL,
	[FE1a2_norm_Q] [real] NOT NULL,
	[PE4a1] [real] NOT NULL,
	[TE1a1] [real] NOT NULL,
	[QE1a1] [real] NOT NULL,
	[FE1a1_norm] [real] NOT NULL,
	[FE1a1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSumOlvia](
	[dt] [datetime] NOT NULL,
	[PE4a2] [real] NOT NULL,
	[TE1a2] [real] NOT NULL,
	[QE1a2] [real] NOT NULL,
	[FE1a2_norm] [real] NOT NULL,
	[FE1a2_norm_Q] [real] NOT NULL,
	[PE4a1] [real] NOT NULL,
	[TE1a1] [real] NOT NULL,
	[QE1a1] [real] NOT NULL,
	[FE1a1_norm] [real] NOT NULL,
	[FE1a1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO
