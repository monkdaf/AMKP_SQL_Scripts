--- use DB as default one
USE [KRR-PA-CNT-GasForISA95]
GO

-- delete all tables
DROP TABLE [dbo].[PlcCur01]
DROP TABLE [dbo].[PlcCur02]
DROP TABLE [dbo].[PlcCur03]
DROP TABLE [dbo].[PlcCur04]
DROP TABLE [dbo].[PlcCur05]

DROP TABLE [dbo].[PlcSum01]
DROP TABLE [dbo].[PlcSum02]
DROP TABLE [dbo].[PlcSum03]
DROP TABLE [dbo].[PlcSum04]
DROP TABLE [dbo].[PlcSum05]

DROP TABLE [dbo].[TempCur01]
DROP TABLE [dbo].[TempCur02]
DROP TABLE [dbo].[TempCur03]
DROP TABLE [dbo].[TempCur04]
DROP TABLE [dbo].[TempCur05]

DROP TABLE [dbo].[TempSum01]
DROP TABLE [dbo].[TempSum02]
DROP TABLE [dbo].[TempSum03]
DROP TABLE [dbo].[TempSum04]
DROP TABLE [dbo].[TempSum05]

--- create table for recive data from PLC
CREATE TABLE [dbo].[PlcCur01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [real] NOT NULL,
	[TE1_1] [real] NOT NULL,
	[FE1_1] [real] NOT NULL,
	[QE1_1] [real] NOT NULL,	
	[FE1_1_norm] [real] NOT NULL,
	[FE1_1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [real] NOT NULL,
	[TE1_2] [real] NOT NULL,
	[FE1_2] [real] NOT NULL,
	[QE1_2] [real] NOT NULL,	
	[FE1_2_norm] [real] NOT NULL,
	[FE1_2_norm_Q] [real] NOT NULL,
	[PE3_20] [real] NOT NULL,
	[TE3_18] [real] NOT NULL,
	[FE3_18] [real] NOT NULL,
	[QE3_20] [real] NOT NULL,	
	[FE3_18_norm] [real] NOT NULL,
	[FE3_18_norm_Q] [real] NOT NULL,
	[PE3_22] [real] NOT NULL,
	[TE3_20] [real] NOT NULL,
	[FE3_20] [real] NOT NULL,
	[QE3_22] [real] NOT NULL,	
	[FE3_20_norm] [real] NOT NULL,
	[FE3_20_norm_Q] [real] NOT NULL,
	[PE3_23] [real] NOT NULL,
	[TE3_21] [real] NOT NULL,
	[FE3_21] [real] NOT NULL,
	[QE3_23] [real] NOT NULL,	
	[FE3_21_norm] [real] NOT NULL,
	[FE3_21_norm_Q] [real] NOT NULL,
	[PE3_24] [real] NOT NULL,
	[TE3_22] [real] NOT NULL,
	[FE3_22] [real] NOT NULL,
	[QE3_24] [real] NOT NULL,	
	[FE3_22_norm] [real] NOT NULL,
	[FE3_22_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur03](
	[dt] [datetime] NOT NULL,
	[QE3_7] [real] NOT NULL,
	[QE3_8] [real] NOT NULL,
	[QE3_9] [real] NOT NULL,	
	[PE3_5] [real] NOT NULL,
	[TE3_5] [real] NOT NULL,
	[FE3_5] [real] NOT NULL,
	[QE3_5] [real] NOT NULL,	
	[FE3_5_norm] [real] NOT NULL,
	[FE3_5_norm_Q] [real] NOT NULL,
	[PE3_6] [real] NOT NULL,
	[TE3_6] [real] NOT NULL,
	[FE3_6] [real] NOT NULL,
	[FE3_6_norm] [real] NOT NULL,
	[FE3_6_norm_Q] [real] NOT NULL,
	[PE3_7] [real] NOT NULL,
	[TE3_7] [real] NOT NULL,
	[FE3_7] [real] NOT NULL,
	[FE3_7_norm] [real] NOT NULL,
	[FE3_7_norm_Q] [real] NOT NULL,
	[PE3_8] [real] NOT NULL,
	[TE3_8] [real] NOT NULL,
	[FE3_8] [real] NOT NULL,
	[QE3_6] [real] NOT NULL,	
	[FE3_8_norm] [real] NOT NULL,
	[FE3_8_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur04](
	[dt] [datetime] NOT NULL,
	[QE3_2] [real] NOT NULL,
	[QE3_3] [real] NOT NULL,
	[QE3_4] [real] NOT NULL,	
	[PE3_1] [real] NOT NULL,
	[TE3_1] [real] NOT NULL,
	[FE3_1] [real] NOT NULL,
	[QE3_1] [real] NOT NULL,	
	[FE3_1_norm] [real] NOT NULL,
	[FE3_1_norm_Q] [real] NOT NULL,
	[PE3_2] [real] NOT NULL,
	[TE3_2] [real] NOT NULL,
	[FE3_2] [real] NOT NULL,
	[FE3_2_norm] [real] NOT NULL,
	[FE3_2_norm_Q] [real] NOT NULL,
	[PE3_3] [real] NOT NULL,
	[TE3_3] [real] NOT NULL,
	[FE3_3] [real] NOT NULL,
	[FE3_3_norm] [real] NOT NULL,
	[FE3_3_norm_Q] [real] NOT NULL,
	[PE3_4] [real] NOT NULL,
	[TE3_4] [real] NOT NULL,
	[FE3_4] [real] NOT NULL,
	[FE3_4_norm] [real] NOT NULL,
	[FE3_4_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur05](
	[dt] [datetime] NOT NULL,
	[QE3_11] [real] NOT NULL,	
	[PE1_3] [real] NOT NULL,
	[TE1_3] [real] NOT NULL,
	[FE1_3] [real] NOT NULL,
	[QE1_3] [real] NOT NULL,
	[FE1_3_norm] [real] NOT NULL,
	[FE1_3_norm_Q] [real] NOT NULL,
	[PE1_4] [real] NOT NULL,
	[TE1_4] [real] NOT NULL,
	[FE1_4] [real] NOT NULL,
	[FE1_4_norm] [real] NOT NULL,
	[FE1_4_norm_Q] [real] NOT NULL,
	[PE3_9] [real] NOT NULL,
	[TE3_9] [real] NOT NULL,
	[FE3_9] [real] NOT NULL,
	[QE3_10] [real] NOT NULL,
	[FE3_9_norm] [real] NOT NULL,
	[FE3_9_norm_Q] [real] NOT NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [real] NOT NULL,
	[TE1_1] [real] NOT NULL,
	[FE1_1] [real] NOT NULL,
	[QE1_1] [real] NOT NULL,	
	[FE1_1_norm] [real] NOT NULL,
	[FE1_1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [real] NOT NULL,
	[TE1_2] [real] NOT NULL,
	[FE1_2] [real] NOT NULL,
	[QE1_2] [real] NOT NULL,	
	[FE1_2_norm] [real] NOT NULL,
	[FE1_2_norm_Q] [real] NOT NULL,
	[PE3_20] [real] NOT NULL,
	[TE3_18] [real] NOT NULL,
	[FE3_18] [real] NOT NULL,
	[QE3_20] [real] NOT NULL,	
	[FE3_18_norm] [real] NOT NULL,
	[FE3_18_norm_Q] [real] NOT NULL,
	[PE3_22] [real] NOT NULL,
	[TE3_20] [real] NOT NULL,
	[FE3_20] [real] NOT NULL,
	[QE3_22] [real] NOT NULL,	
	[FE3_20_norm] [real] NOT NULL,
	[FE3_20_norm_Q] [real] NOT NULL,
	[PE3_23] [real] NOT NULL,
	[TE3_21] [real] NOT NULL,
	[FE3_21] [real] NOT NULL,
	[QE3_23] [real] NOT NULL,	
	[FE3_21_norm] [real] NOT NULL,
	[FE3_21_norm_Q] [real] NOT NULL,
	[PE3_24] [real] NOT NULL,
	[TE3_22] [real] NOT NULL,
	[FE3_22] [real] NOT NULL,
	[QE3_24] [real] NOT NULL,	
	[FE3_22_norm] [real] NOT NULL,
	[FE3_22_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum03](
	[dt] [datetime] NOT NULL,
	[QE3_7] [real] NOT NULL,
	[QE3_8] [real] NOT NULL,
	[QE3_9] [real] NOT NULL,	
	[PE3_5] [real] NOT NULL,
	[TE3_5] [real] NOT NULL,
	[FE3_5] [real] NOT NULL,
	[QE3_5] [real] NOT NULL,	
	[FE3_5_norm] [real] NOT NULL,
	[FE3_5_norm_Q] [real] NOT NULL,
	[PE3_6] [real] NOT NULL,
	[TE3_6] [real] NOT NULL,
	[FE3_6] [real] NOT NULL,
	[FE3_6_norm] [real] NOT NULL,
	[FE3_6_norm_Q] [real] NOT NULL,
	[PE3_7] [real] NOT NULL,
	[TE3_7] [real] NOT NULL,
	[FE3_7] [real] NOT NULL,
	[FE3_7_norm] [real] NOT NULL,
	[FE3_7_norm_Q] [real] NOT NULL,
	[PE3_8] [real] NOT NULL,
	[TE3_8] [real] NOT NULL,
	[FE3_8] [real] NOT NULL,
	[QE3_6] [real] NOT NULL,	
	[FE3_8_norm] [real] NOT NULL,
	[FE3_8_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum04](
	[dt] [datetime] NOT NULL,
	[QE3_2] [real] NOT NULL,
	[QE3_3] [real] NOT NULL,
	[QE3_4] [real] NOT NULL,	
	[PE3_1] [real] NOT NULL,
	[TE3_1] [real] NOT NULL,
	[QE3_1] [real] NOT NULL,
	[FE3_1] [real] NOT NULL,
	[FE3_1_norm] [real] NOT NULL,
	[FE3_1_norm_Q] [real] NOT NULL,
	[PE3_2] [real] NOT NULL,
	[TE3_2] [real] NOT NULL,
	[FE3_2] [real] NOT NULL,
	[FE3_2_norm] [real] NOT NULL,
	[FE3_2_norm_Q] [real] NOT NULL,
	[PE3_3] [real] NOT NULL,
	[TE3_3] [real] NOT NULL,
	[FE3_3] [real] NOT NULL,
	[FE3_3_norm] [real] NOT NULL,
	[FE3_3_norm_Q] [real] NOT NULL,
	[PE3_4] [real] NOT NULL,
	[TE3_4] [real] NOT NULL,
	[FE3_4] [real] NOT NULL,
	[FE3_4_norm] [real] NOT NULL,
	[FE3_4_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum05](
	[dt] [datetime] NOT NULL,
	[QE3_11] [real] NOT NULL,	
	[PE1_3] [real] NOT NULL,
	[TE1_3] [real] NOT NULL,
	[FE1_3] [real] NOT NULL,
	[QE1_3] [real] NOT NULL,
	[FE1_3_norm] [real] NOT NULL,
	[FE1_3_norm_Q] [real] NOT NULL,
	[PE1_4] [real] NOT NULL,
	[TE1_4] [real] NOT NULL,
	[FE1_4] [real] NOT NULL,
	[FE1_4_norm] [real] NOT NULL,
	[FE1_4_norm_Q] [real] NOT NULL,
	[PE3_9] [real] NOT NULL,
	[TE3_9] [real] NOT NULL,
	[FE3_9] [real] NOT NULL,
	[QE3_10] [real] NOT NULL,
	[FE3_9_norm] [real] NOT NULL,
	[FE3_9_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

-- create table for raw data from script
CREATE TABLE [dbo].[TempCur01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [real] NOT NULL,
	[TE1_1] [real] NOT NULL,
	[FE1_1] [real] NOT NULL,
	[QE1_1] [real] NOT NULL,	
	[FE1_1_norm] [real] NOT NULL,
	[FE1_1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [real] NOT NULL,
	[TE1_2] [real] NOT NULL,
	[FE1_2] [real] NOT NULL,
	[QE1_2] [real] NOT NULL,	
	[FE1_2_norm] [real] NOT NULL,
	[FE1_2_norm_Q] [real] NOT NULL,
	[PE3_20] [real] NOT NULL,
	[TE3_18] [real] NOT NULL,
	[FE3_18] [real] NOT NULL,
	[QE3_20] [real] NOT NULL,	
	[FE3_18_norm] [real] NOT NULL,
	[FE3_18_norm_Q] [real] NOT NULL,
	[PE3_22] [real] NOT NULL,
	[TE3_20] [real] NOT NULL,
	[FE3_20] [real] NOT NULL,
	[QE3_22] [real] NOT NULL,	
	[FE3_20_norm] [real] NOT NULL,
	[FE3_20_norm_Q] [real] NOT NULL,
	[PE3_23] [real] NOT NULL,
	[TE3_21] [real] NOT NULL,
	[FE3_21] [real] NOT NULL,
	[QE3_23] [real] NOT NULL,	
	[FE3_21_norm] [real] NOT NULL,
	[FE3_21_norm_Q] [real] NOT NULL,
	[PE3_24] [real] NOT NULL,
	[TE3_22] [real] NOT NULL,
	[FE3_22] [real] NOT NULL,
	[QE3_24] [real] NOT NULL,	
	[FE3_22_norm] [real] NOT NULL,
	[FE3_22_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur03](
	[dt] [datetime] NOT NULL,
	[QE3_7] [real] NOT NULL,
	[QE3_8] [real] NOT NULL,
	[QE3_9] [real] NOT NULL,	
	[PE3_5] [real] NOT NULL,
	[TE3_5] [real] NOT NULL,
	[FE3_5] [real] NOT NULL,
	[QE3_5] [real] NOT NULL,	
	[FE3_5_norm] [real] NOT NULL,
	[FE3_5_norm_Q] [real] NOT NULL,
	[PE3_6] [real] NOT NULL,
	[TE3_6] [real] NOT NULL,
	[FE3_6] [real] NOT NULL,
	[FE3_6_norm] [real] NOT NULL,
	[FE3_6_norm_Q] [real] NOT NULL,
	[PE3_7] [real] NOT NULL,
	[TE3_7] [real] NOT NULL,
	[FE3_7] [real] NOT NULL,
	[FE3_7_norm] [real] NOT NULL,
	[FE3_7_norm_Q] [real] NOT NULL,
	[PE3_8] [real] NOT NULL,
	[TE3_8] [real] NOT NULL,
	[FE3_8] [real] NOT NULL,
	[QE3_6] [real] NOT NULL,	
	[FE3_8_norm] [real] NOT NULL,
	[FE3_8_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur04](
	[dt] [datetime] NOT NULL,
	[QE3_2] [real] NOT NULL,
	[QE3_3] [real] NOT NULL,
	[QE3_4] [real] NOT NULL,	
	[PE3_1] [real] NOT NULL,
	[TE3_1] [real] NOT NULL,
	[FE3_1] [real] NOT NULL,
	[QE3_1] [real] NOT NULL,	
	[FE3_1_norm] [real] NOT NULL,
	[FE3_1_norm_Q] [real] NOT NULL,
	[PE3_2] [real] NOT NULL,
	[TE3_2] [real] NOT NULL,
	[FE3_2] [real] NOT NULL,
	[FE3_2_norm] [real] NOT NULL,
	[FE3_2_norm_Q] [real] NOT NULL,
	[PE3_3] [real] NOT NULL,
	[TE3_3] [real] NOT NULL,
	[FE3_3] [real] NOT NULL,
	[FE3_3_norm] [real] NOT NULL,
	[FE3_3_norm_Q] [real] NOT NULL,
	[PE3_4] [real] NOT NULL,
	[TE3_4] [real] NOT NULL,
	[FE3_4] [real] NOT NULL,
	[FE3_4_norm] [real] NOT NULL,
	[FE3_4_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur05](
	[dt] [datetime] NOT NULL,
	[QE3_11] [real] NOT NULL,	
	[PE1_3] [real] NOT NULL,
	[TE1_3] [real] NOT NULL,
	[FE1_3] [real] NOT NULL,
	[QE1_3] [real] NOT NULL,
	[FE1_3_norm] [real] NOT NULL,
	[FE1_3_norm_Q] [real] NOT NULL,
	[PE1_4] [real] NOT NULL,
	[TE1_4] [real] NOT NULL,
	[FE1_4] [real] NOT NULL,
	[FE1_4_norm] [real] NOT NULL,
	[FE1_4_norm_Q] [real] NOT NULL,
	[PE3_9] [real] NOT NULL,
	[TE3_9] [real] NOT NULL,
	[FE3_9] [real] NOT NULL,
	[QE3_10] [real] NOT NULL,
	[FE3_9_norm] [real] NOT NULL,
	[FE3_9_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [real] NOT NULL,
	[TE1_1] [real] NOT NULL,
	[FE1_1] [real] NOT NULL,
	[QE1_1] [real] NOT NULL,	
	[FE1_1_norm] [real] NOT NULL,
	[FE1_1_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [real] NOT NULL,
	[TE1_2] [real] NOT NULL,
	[FE1_2] [real] NOT NULL,
	[QE1_2] [real] NOT NULL,	
	[FE1_2_norm] [real] NOT NULL,
	[FE1_2_norm_Q] [real] NOT NULL,
	[PE3_20] [real] NOT NULL,
	[TE3_18] [real] NOT NULL,
	[FE3_18] [real] NOT NULL,
	[QE3_20] [real] NOT NULL,	
	[FE3_18_norm] [real] NOT NULL,
	[FE3_18_norm_Q] [real] NOT NULL,
	[PE3_22] [real] NOT NULL,
	[TE3_20] [real] NOT NULL,
	[FE3_20] [real] NOT NULL,
	[QE3_22] [real] NOT NULL,	
	[FE3_20_norm] [real] NOT NULL,
	[FE3_20_norm_Q] [real] NOT NULL,
	[PE3_23] [real] NOT NULL,
	[TE3_21] [real] NOT NULL,
	[FE3_21] [real] NOT NULL,
	[QE3_23] [real] NOT NULL,	
	[FE3_21_norm] [real] NOT NULL,
	[FE3_21_norm_Q] [real] NOT NULL,
	[PE3_24] [real] NOT NULL,
	[TE3_22] [real] NOT NULL,
	[FE3_22] [real] NOT NULL,
	[QE3_24] [real] NOT NULL,	
	[FE3_22_norm] [real] NOT NULL,
	[FE3_22_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum03](
	[dt] [datetime] NOT NULL,
	[QE3_7] [real] NOT NULL,
	[QE3_8] [real] NOT NULL,
	[QE3_9] [real] NOT NULL,	
	[PE3_5] [real] NOT NULL,
	[TE3_5] [real] NOT NULL,
	[FE3_5] [real] NOT NULL,
	[QE3_5] [real] NOT NULL,	
	[FE3_5_norm] [real] NOT NULL,
	[FE3_5_norm_Q] [real] NOT NULL,
	[PE3_6] [real] NOT NULL,
	[TE3_6] [real] NOT NULL,
	[FE3_6] [real] NOT NULL,
	[FE3_6_norm] [real] NOT NULL,
	[FE3_6_norm_Q] [real] NOT NULL,
	[PE3_7] [real] NOT NULL,
	[TE3_7] [real] NOT NULL,
	[FE3_7] [real] NOT NULL,
	[FE3_7_norm] [real] NOT NULL,
	[FE3_7_norm_Q] [real] NOT NULL,
	[PE3_8] [real] NOT NULL,
	[TE3_8] [real] NOT NULL,
	[FE3_8] [real] NOT NULL,
	[QE3_6] [real] NOT NULL,	
	[FE3_8_norm] [real] NOT NULL,
	[FE3_8_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum04](
	[dt] [datetime] NOT NULL,
	[QE3_2] [real] NOT NULL,
	[QE3_3] [real] NOT NULL,
	[QE3_4] [real] NOT NULL,	
	[PE3_1] [real] NOT NULL,
	[TE3_1] [real] NOT NULL,
	[QE3_1] [real] NOT NULL,
	[FE3_1] [real] NOT NULL,
	[FE3_1_norm] [real] NOT NULL,
	[FE3_1_norm_Q] [real] NOT NULL,
	[PE3_2] [real] NOT NULL,
	[TE3_2] [real] NOT NULL,
	[FE3_2] [real] NOT NULL,
	[FE3_2_norm] [real] NOT NULL,
	[FE3_2_norm_Q] [real] NOT NULL,
	[PE3_3] [real] NOT NULL,
	[TE3_3] [real] NOT NULL,
	[FE3_3] [real] NOT NULL,
	[FE3_3_norm] [real] NOT NULL,
	[FE3_3_norm_Q] [real] NOT NULL,
	[PE3_4] [real] NOT NULL,
	[TE3_4] [real] NOT NULL,
	[FE3_4] [real] NOT NULL,
	[FE3_4_norm] [real] NOT NULL,
	[FE3_4_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum05](
	[dt] [datetime] NOT NULL,
	[QE3_11] [real] NOT NULL,	
	[PE1_3] [real] NOT NULL,
	[TE1_3] [real] NOT NULL,
	[FE1_3] [real] NOT NULL,
	[QE1_3] [real] NOT NULL,
	[FE1_3_norm] [real] NOT NULL,
	[FE1_3_norm_Q] [real] NOT NULL,
	[PE1_4] [real] NOT NULL,
	[TE1_4] [real] NOT NULL,
	[FE1_4] [real] NOT NULL,
	[FE1_4_norm] [real] NOT NULL,
	[FE1_4_norm_Q] [real] NOT NULL,
	[PE3_9] [real] NOT NULL,
	[TE3_9] [real] NOT NULL,
	[FE3_9] [real] NOT NULL,
	[QE3_10] [real] NOT NULL,
	[FE3_9_norm] [real] NOT NULL,
	[FE3_9_norm_Q] [real] NOT NULL
) ON [PRIMARY]

GO
                                	