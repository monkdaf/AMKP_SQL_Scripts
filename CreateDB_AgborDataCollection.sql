--- create DB
CREATE DATABASE AgborDataCollection
GO

--- use DB as default one
USE [AgborDataCollection]
GO

--- create table for current data
CREATE TABLE [dbo].[CurData](
	[dt] [datetimeoffset] NOT NULL,
	[ID] [int] NOT NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]

GO

--- create table for summary data
CREATE TABLE [dbo].[SumData](
	[dt] [datetimeoffset] NOT NULL,
	[ID] [int] NOT NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]

GO

--- create table for recive data from PLC
CREATE TABLE [dbo].[PlcCur01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [float] NOT NULL,
	[TE1_1] [float] NOT NULL,
	[QE1_1] [float] NOT NULL,
	[FE1_1] [float] NOT NULL,
	[FE1_1_norm] [float] NOT NULL,
	[FE1_1_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [float] NOT NULL,
	[TE1_2] [float] NOT NULL,
	[QE1_2] [float] NOT NULL,
	[FE1_2] [float] NOT NULL,
	[FE1_2_norm] [float] NOT NULL,
	[FE1_2_norm_Q] [float] NOT NULL,
	[PE3_20] [float] NOT NULL,
	[TE3_18] [float] NOT NULL,
	[QE3_20] [float] NOT NULL,
	[FE3_18] [float] NOT NULL,
	[FE3_18_norm] [float] NOT NULL,
	[FE3_18_norm_Q] [float] NOT NULL,
	[PE3_22] [float] NOT NULL,
	[TE3_20] [float] NOT NULL,
	[QE3_22] [float] NOT NULL,
	[FE3_20] [float] NOT NULL,
	[FE3_20_norm] [float] NOT NULL,
	[FE3_20_norm_Q] [float] NOT NULL,
	[PE3_23] [float] NOT NULL,
	[TE3_21] [float] NOT NULL,
	[QE3_23] [float] NOT NULL,
	[FE3_21] [float] NOT NULL,
	[FE3_21_norm] [float] NOT NULL,
	[FE3_21_norm_Q] [float] NOT NULL,
	[PE3_24] [float] NOT NULL,
	[TE3_22] [float] NOT NULL,
	[QE3_24] [float] NOT NULL,
	[FE3_22] [float] NOT NULL,
	[FE3_22_norm] [float] NOT NULL,
	[FE3_22_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur03](
	[dt] [datetime] NOT NULL,
	[PE3_5] [float] NOT NULL,
	[TE3_5] [float] NOT NULL,
	[QE3_5] [float] NOT NULL,
	[FE3_5] [float] NOT NULL,
	[FE3_5_norm] [float] NOT NULL,
	[FE3_5_norm_Q] [float] NOT NULL,
	[PE3_6] [float] NOT NULL,
	[TE3_6] [float] NOT NULL,
	[FE3_6] [float] NOT NULL,
	[FE3_6_norm] [float] NOT NULL,
	[FE3_6_norm_Q] [float] NOT NULL,
	[PE3_7] [float] NOT NULL,
	[TE3_7] [float] NOT NULL,
	[FE3_7] [float] NOT NULL,
	[FE3_7_norm] [float] NOT NULL,
	[FE3_7_norm_Q] [float] NOT NULL,
	[PE3_8] [float] NOT NULL,
	[TE3_8] [float] NOT NULL,
	[QE3_6] [float] NOT NULL,
	[FE3_8] [float] NOT NULL,
	[FE3_8_norm] [float] NOT NULL,
	[FE3_8_norm_Q] [float] NOT NULL,
	[QE3_7] [float] NOT NULL,
	[QE3_8] [float] NOT NULL,
	[QE3_9] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur04](
	[dt] [datetime] NOT NULL,
	[PE3_1] [float] NOT NULL,
	[TE3_1] [float] NOT NULL,
	[QE3_1] [float] NOT NULL,
	[FE3_1] [float] NOT NULL,
	[FE3_1_norm] [float] NOT NULL,
	[FE3_1_norm_Q] [float] NOT NULL,
	[PE3_2] [float] NOT NULL,
	[TE3_2] [float] NOT NULL,
	[FE3_2] [float] NOT NULL,
	[FE3_2_norm] [float] NOT NULL,
	[FE3_2_norm_Q] [float] NOT NULL,
	[PE3_3] [float] NOT NULL,
	[TE3_3] [float] NOT NULL,
	[FE3_3] [float] NOT NULL,
	[FE3_3_norm] [float] NOT NULL,
	[FE3_3_norm_Q] [float] NOT NULL,
	[PE3_4] [float] NOT NULL,
	[TE3_4] [float] NOT NULL,
	[FE3_4] [float] NOT NULL,
	[FE3_4_norm] [float] NOT NULL,
	[FE3_4_norm_Q] [float] NOT NULL,
	[QE3_2] [float] NOT NULL,
	[QE3_3] [float] NOT NULL,
	[QE3_4] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur05](
	[dt] [datetime] NOT NULL,
	[PE1_3] [float] NOT NULL,
	[TE1_3] [float] NOT NULL,
	[FE1_3] [float] NOT NULL,
	[QE1_3] [float] NOT NULL,
	[FE1_3_norm] [float] NOT NULL,
	[FE1_3_norm_Q] [float] NOT NULL,
	[PE1_4] [float] NOT NULL,
	[TE1_4] [float] NOT NULL,
	[FE1_4] [float] NOT NULL,
	[FE1_4_norm] [float] NOT NULL,
	[FE1_4_norm_Q] [float] NOT NULL,
	[PE3_9] [float] NOT NULL,
	[TE3_9] [float] NOT NULL,
	[FE3_9] [float] NOT NULL,
	[QE3_10] [float] NOT NULL,
	[FE3_9_norm] [float] NOT NULL,
	[FE3_9_norm_Q] [float] NOT NULL,
	[QE3_11] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur07](
	[dt] [datetime] NOT NULL,
	[PE2_1] [float] NOT NULL,
	[TE2_1] [float] NOT NULL,
	[FE2_1] [float] NOT NULL,
	[FE2_1_norm] [float] NOT NULL,
	[PE2_2] [float] NOT NULL,
	[TE2_2] [float] NOT NULL,
	[FE2_2] [float] NOT NULL,
	[FE2_2_norm] [float] NOT NULL,
	[PE2_3] [float] NOT NULL,
	[TE2_3] [float] NOT NULL,
	[FE2_3] [float] NOT NULL,
	[FE2_3_norm] [float] NOT NULL,
	[PE3_18] [float] NOT NULL,
	[TE3_16] [float] NOT NULL,
	[FE3_16] [float] NOT NULL,
	[QE3_18] [float] NOT NULL,
	[FE3_16_norm] [float] NOT NULL,
	[FE3_16_norm_Q] [float] NOT NULL,
	[PE3_19] [float] NOT NULL,
	[TE3_17] [float] NOT NULL,
	[FE3_17] [float] NOT NULL,
	[QE3_19] [float] NOT NULL,
	[FE3_17_norm] [float] NOT NULL,
	[FE3_17_norm_Q] [float] NOT NULL,
	[PE3_21] [float] NOT NULL,
	[TE3_19] [float] NOT NULL,
	[FE3_19] [float] NOT NULL,
	[QE3_21] [float] NOT NULL,
	[FE3_19_norm] [float] NOT NULL,
	[FE3_19_norm_Q] [float] NOT NULL,
	[PE3_25] [float] NOT NULL,
	[TE3_23] [float] NOT NULL,
	[FE3_23] [float] NOT NULL,
	[FE3_23_norm] [float] NOT NULL,
	[FE3_23_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur08](
	[dt] [datetime] NOT NULL,
	[PE3_14] [float] NOT NULL,
	[PE3_15] [float] NOT NULL,
	[PE3_16] [float] NOT NULL,
	[TE3_14] [float] NOT NULL,
	[FE3_14] [float] NOT NULL,
	[QE3_16] [float] NOT NULL,
	[FE3_14_norm] [float] NOT NULL,
	[FE3_14_norm_Q] [float] NOT NULL,
	[PE3_17] [float] NOT NULL,
	[TE3_15] [float] NOT NULL,
	[FE3_15] [float] NOT NULL,
	[QE3_17] [float] NOT NULL,
	[FE3_15_norm] [float] NOT NULL,
	[FE3_15_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur09](
	[dt] [datetime] NOT NULL,
	[PE3_10] [float] NOT NULL,
	[TE3_10] [float] NOT NULL,
	[FE3_10] [float] NOT NULL,
	[QE3_12] [float] NOT NULL,
	[FE3_10_norm] [float] NOT NULL,
	[FE3_10_norm_Q] [float] NOT NULL,
	[PE3_11] [float] NOT NULL,
	[TE3_11] [float] NOT NULL,
	[FE3_11] [float] NOT NULL,
	[QE3_13] [float] NOT NULL,
	[FE3_11_norm] [float] NOT NULL,
	[FE3_11_norm_Q] [float] NOT NULL,
	[PE3_12] [float] NOT NULL,
	[TE3_12] [float] NOT NULL,
	[FE3_12] [float] NOT NULL,
	[QE3_14] [float] NOT NULL,
	[FE3_12_norm] [float] NOT NULL,
	[FE3_12_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur10](
	[dt] [datetime] NOT NULL,
	[PE3_13] [float] NOT NULL,
	[TE3_13] [float] NOT NULL,
	[FE3_13] [float] NOT NULL,
	[QE3_15] [float] NOT NULL,
	[FE3_13_norm] [float] NOT NULL,
	[FE3_13_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcCur11](
	[dt] [datetime] NOT NULL,
	[PE_7103_04A_P06] [float] NOT NULL,
	[TE_7103_04A_T01] [float] NOT NULL,
	[FE_7103_04A_F02] [float] NOT NULL,
	[QE_7101_10_A66] [float] NOT NULL,
	[FE_7103_04A_F02_norm] [float] NOT NULL,
	[FE_7103_04A_F02_norm_Q] [float] NOT NULL,
	[PE_7103_04B_P06] [float] NOT NULL,
	[TE_7103_04B_T01] [float] NOT NULL,
	[FE_7103_04B_F02] [float] NOT NULL,
	[FE_7103_04B_F02_norm] [float] NOT NULL,
	[FE_7103_04B_F02_norm_Q] [float] NOT NULL,
	[PE_7105_04_P06] [float] NOT NULL,
	[TE_7105_04_T01] [float] NOT NULL,
	[FE_7105_04_F02] [float] NOT NULL,
	[FE_7105_04_F02_norm] [float] NOT NULL,
	[FE_7105_04_F02_norm_Q] [float] NOT NULL,
	[PE_7303_04_P06] [float] NOT NULL,
	[TE_7303_04_T01] [float] NOT NULL,
	[FE_7303_04_F02] [float] NOT NULL,
	[QE_7303_10_A56] [float] NOT NULL,
	[FE_7303_04_F02_norm] [float] NOT NULL,
	[FE_7303_04_F02_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [float] NOT NULL,
	[TE1_1] [float] NOT NULL,
	[QE1_1] [float] NOT NULL,
	[FE1_1] [float] NOT NULL,
	[FE1_1_norm] [float] NOT NULL,
	[FE1_1_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [float] NOT NULL,
	[TE1_2] [float] NOT NULL,
	[QE1_2] [float] NOT NULL,
	[FE1_2] [float] NOT NULL,
	[FE1_2_norm] [float] NOT NULL,
	[FE1_2_norm_Q] [float] NOT NULL,
	[PE3_20] [float] NOT NULL,
	[TE3_18] [float] NOT NULL,
	[QE3_20] [float] NOT NULL,
	[FE3_18] [float] NOT NULL,
	[FE3_18_norm] [float] NOT NULL,
	[FE3_18_norm_Q] [float] NOT NULL,
	[PE3_22] [float] NOT NULL,
	[TE3_20] [float] NOT NULL,
	[QE3_22] [float] NOT NULL,
	[FE3_20] [float] NOT NULL,
	[FE3_20_norm] [float] NOT NULL,
	[FE3_20_norm_Q] [float] NOT NULL,
	[PE3_23] [float] NOT NULL,
	[TE3_21] [float] NOT NULL,
	[QE3_23] [float] NOT NULL,
	[FE3_21] [float] NOT NULL,
	[FE3_21_norm] [float] NOT NULL,
	[FE3_21_norm_Q] [float] NOT NULL,
	[PE3_24] [float] NOT NULL,
	[TE3_22] [float] NOT NULL,
	[QE3_24] [float] NOT NULL,
	[FE3_22] [float] NOT NULL,
	[FE3_22_norm] [float] NOT NULL,
	[FE3_22_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum03](
	[dt] [datetime] NOT NULL,
	[PE3_5] [float] NOT NULL,
	[TE3_5] [float] NOT NULL,
	[QE3_5] [float] NOT NULL,
	[FE3_5] [float] NOT NULL,
	[FE3_5_norm] [float] NOT NULL,
	[FE3_5_norm_Q] [float] NOT NULL,
	[PE3_6] [float] NOT NULL,
	[TE3_6] [float] NOT NULL,
	[FE3_6] [float] NOT NULL,
	[FE3_6_norm] [float] NOT NULL,
	[FE3_6_norm_Q] [float] NOT NULL,
	[PE3_7] [float] NOT NULL,
	[TE3_7] [float] NOT NULL,
	[FE3_7] [float] NOT NULL,
	[FE3_7_norm] [float] NOT NULL,
	[FE3_7_norm_Q] [float] NOT NULL,
	[PE3_8] [float] NOT NULL,
	[TE3_8] [float] NOT NULL,
	[QE3_6] [float] NOT NULL,
	[FE3_8] [float] NOT NULL,
	[FE3_8_norm] [float] NOT NULL,
	[FE3_8_norm_Q] [float] NOT NULL,
	[QE3_7] [float] NOT NULL,
	[QE3_8] [float] NOT NULL,
	[QE3_9] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum04](
	[dt] [datetime] NOT NULL,
	[PE3_1] [float] NOT NULL,
	[TE3_1] [float] NOT NULL,
	[QE3_1] [float] NOT NULL,
	[FE3_1] [float] NOT NULL,
	[FE3_1_norm] [float] NOT NULL,
	[FE3_1_norm_Q] [float] NOT NULL,
	[PE3_2] [float] NOT NULL,
	[TE3_2] [float] NOT NULL,
	[FE3_2] [float] NOT NULL,
	[FE3_2_norm] [float] NOT NULL,
	[FE3_2_norm_Q] [float] NOT NULL,
	[PE3_3] [float] NOT NULL,
	[TE3_3] [float] NOT NULL,
	[FE3_3] [float] NOT NULL,
	[FE3_3_norm] [float] NOT NULL,
	[FE3_3_norm_Q] [float] NOT NULL,
	[PE3_4] [float] NOT NULL,
	[TE3_4] [float] NOT NULL,
	[FE3_4] [float] NOT NULL,
	[FE3_4_norm] [float] NOT NULL,
	[FE3_4_norm_Q] [float] NOT NULL,
	[QE3_2] [float] NOT NULL,
	[QE3_3] [float] NOT NULL,
	[QE3_4] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum05](
	[dt] [datetime] NOT NULL,
	[PE1_3] [float] NOT NULL,
	[TE1_3] [float] NOT NULL,
	[FE1_3] [float] NOT NULL,
	[QE1_3] [float] NOT NULL,
	[FE1_3_norm] [float] NOT NULL,
	[FE1_3_norm_Q] [float] NOT NULL,
	[PE1_4] [float] NOT NULL,
	[TE1_4] [float] NOT NULL,
	[FE1_4] [float] NOT NULL,
	[FE1_4_norm] [float] NOT NULL,
	[FE1_4_norm_Q] [float] NOT NULL,
	[PE3_9] [float] NOT NULL,
	[TE3_9] [float] NOT NULL,
	[FE3_9] [float] NOT NULL,
	[QE3_10] [float] NOT NULL,
	[FE3_9_norm] [float] NOT NULL,
	[FE3_9_norm_Q] [float] NOT NULL,
	[QE3_11] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum07](
	[dt] [datetime] NOT NULL,
	[PE2_1] [float] NOT NULL,
	[TE2_1] [float] NOT NULL,
	[FE2_1] [float] NOT NULL,
	[FE2_1_norm] [float] NOT NULL,
	[PE2_2] [float] NOT NULL,
	[TE2_2] [float] NOT NULL,
	[FE2_2] [float] NOT NULL,
	[FE2_2_norm] [float] NOT NULL,
	[PE2_3] [float] NOT NULL,
	[TE2_3] [float] NOT NULL,
	[FE2_3] [float] NOT NULL,
	[FE2_3_norm] [float] NOT NULL,
	[PE3_18] [float] NOT NULL,
	[TE3_16] [float] NOT NULL,
	[FE3_16] [float] NOT NULL,
	[QE3_18] [float] NOT NULL,
	[FE3_16_norm] [float] NOT NULL,
	[FE3_16_norm_Q] [float] NOT NULL,
	[PE3_19] [float] NOT NULL,
	[TE3_17] [float] NOT NULL,
	[FE3_17] [float] NOT NULL,
	[QE3_19] [float] NOT NULL,
	[FE3_17_norm] [float] NOT NULL,
	[FE3_17_norm_Q] [float] NOT NULL,
	[PE3_21] [float] NOT NULL,
	[TE3_19] [float] NOT NULL,
	[FE3_19] [float] NOT NULL,
	[QE3_21] [float] NOT NULL,
	[FE3_19_norm] [float] NOT NULL,
	[FE3_19_norm_Q] [float] NOT NULL,
	[PE3_25] [float] NOT NULL,
	[TE3_23] [float] NOT NULL,
	[FE3_23] [float] NOT NULL,
	[FE3_23_norm] [float] NOT NULL,
	[FE3_23_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum08](
	[dt] [datetime] NOT NULL,
	[PE3_14] [float] NOT NULL,
	[PE3_15] [float] NOT NULL,
	[PE3_16] [float] NOT NULL,
	[TE3_14] [float] NOT NULL,
	[FE3_14] [float] NOT NULL,
	[QE3_16] [float] NOT NULL,
	[FE3_14_norm] [float] NOT NULL,
	[FE3_14_norm_Q] [float] NOT NULL,
	[PE3_17] [float] NOT NULL,
	[TE3_15] [float] NOT NULL,
	[FE3_15] [float] NOT NULL,
	[QE3_17] [float] NOT NULL,
	[FE3_15_norm] [float] NOT NULL,
	[FE3_15_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum09](
	[dt] [datetime] NOT NULL,
	[PE3_10] [float] NOT NULL,
	[TE3_10] [float] NOT NULL,
	[FE3_10] [float] NOT NULL,
	[QE3_12] [float] NOT NULL,
	[FE3_10_norm] [float] NOT NULL,
	[FE3_10_norm_Q] [float] NOT NULL,
	[PE3_11] [float] NOT NULL,
	[TE3_11] [float] NOT NULL,
	[FE3_11] [float] NOT NULL,
	[QE3_13] [float] NOT NULL,
	[FE3_11_norm] [float] NOT NULL,
	[FE3_11_norm_Q] [float] NOT NULL,
	[PE3_12] [float] NOT NULL,
	[TE3_12] [float] NOT NULL,
	[FE3_12] [float] NOT NULL,
	[QE3_14] [float] NOT NULL,
	[FE3_12_norm] [float] NOT NULL,
	[FE3_12_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum10](
	[dt] [datetime] NOT NULL,
	[PE3_13] [float] NOT NULL,
	[TE3_13] [float] NOT NULL,
	[FE3_13] [float] NOT NULL,
	[QE3_15] [float] NOT NULL,
	[FE3_13_norm] [float] NOT NULL,
	[FE3_13_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PlcSum11](
	[dt] [datetime] NOT NULL,
	[PE_7103_04A_P06] [float] NOT NULL,
	[TE_7103_04A_T01] [float] NOT NULL,
	[FE_7103_04A_F02] [float] NOT NULL,
	[QE_7101_10_A66] [float] NOT NULL,
	[FE_7103_04A_F02_norm] [float] NOT NULL,
	[FE_7103_04A_F02_norm_Q] [float] NOT NULL,
	[PE_7103_04B_P06] [float] NOT NULL,
	[TE_7103_04B_T01] [float] NOT NULL,
	[FE_7103_04B_F02] [float] NOT NULL,
	[FE_7103_04B_F02_norm] [float] NOT NULL,
	[FE_7103_04B_F02_norm_Q] [float] NOT NULL,
	[PE_7105_04_P06] [float] NOT NULL,
	[TE_7105_04_T01] [float] NOT NULL,
	[FE_7105_04_F02] [float] NOT NULL,
	[FE_7105_04_F02_norm] [float] NOT NULL,
	[FE_7105_04_F02_norm_Q] [float] NOT NULL,
	[PE_7303_04_P06] [float] NOT NULL,
	[TE_7303_04_T01] [float] NOT NULL,
	[FE_7303_04_F02] [float] NOT NULL,
	[QE_7303_10_A56] [float] NOT NULL,
	[FE_7303_04_F02_norm] [float] NOT NULL,
	[FE_7303_04_F02_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

-- create table for raw data from script
CREATE TABLE [dbo].[TempCur01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [float] NOT NULL,
	[TE1_1] [float] NOT NULL,
	[QE1_1] [float] NOT NULL,
	[FE1_1] [float] NOT NULL,
	[FE1_1_norm] [float] NOT NULL,
	[FE1_1_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [float] NOT NULL,
	[TE1_2] [float] NOT NULL,
	[QE1_2] [float] NOT NULL,
	[FE1_2] [float] NOT NULL,
	[FE1_2_norm] [float] NOT NULL,
	[FE1_2_norm_Q] [float] NOT NULL,
	[PE3_20] [float] NOT NULL,
	[TE3_18] [float] NOT NULL,
	[QE3_20] [float] NOT NULL,
	[FE3_18] [float] NOT NULL,
	[FE3_18_norm] [float] NOT NULL,
	[FE3_18_norm_Q] [float] NOT NULL,
	[PE3_22] [float] NOT NULL,
	[TE3_20] [float] NOT NULL,
	[QE3_22] [float] NOT NULL,
	[FE3_20] [float] NOT NULL,
	[FE3_20_norm] [float] NOT NULL,
	[FE3_20_norm_Q] [float] NOT NULL,
	[PE3_23] [float] NOT NULL,
	[TE3_21] [float] NOT NULL,
	[QE3_23] [float] NOT NULL,
	[FE3_21] [float] NOT NULL,
	[FE3_21_norm] [float] NOT NULL,
	[FE3_21_norm_Q] [float] NOT NULL,
	[PE3_24] [float] NOT NULL,
	[TE3_22] [float] NOT NULL,
	[QE3_24] [float] NOT NULL,
	[FE3_22] [float] NOT NULL,
	[FE3_22_norm] [float] NOT NULL,
	[FE3_22_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur03](
	[dt] [datetime] NOT NULL,
	[PE3_5] [float] NOT NULL,
	[TE3_5] [float] NOT NULL,
	[QE3_5] [float] NOT NULL,
	[FE3_5] [float] NOT NULL,
	[FE3_5_norm] [float] NOT NULL,
	[FE3_5_norm_Q] [float] NOT NULL,
	[PE3_6] [float] NOT NULL,
	[TE3_6] [float] NOT NULL,
	[FE3_6] [float] NOT NULL,
	[FE3_6_norm] [float] NOT NULL,
	[FE3_6_norm_Q] [float] NOT NULL,
	[PE3_7] [float] NOT NULL,
	[TE3_7] [float] NOT NULL,
	[FE3_7] [float] NOT NULL,
	[FE3_7_norm] [float] NOT NULL,
	[FE3_7_norm_Q] [float] NOT NULL,
	[PE3_8] [float] NOT NULL,
	[TE3_8] [float] NOT NULL,
	[QE3_6] [float] NOT NULL,
	[FE3_8] [float] NOT NULL,
	[FE3_8_norm] [float] NOT NULL,
	[FE3_8_norm_Q] [float] NOT NULL,
	[QE3_7] [float] NOT NULL,
	[QE3_8] [float] NOT NULL,
	[QE3_9] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur04](
	[dt] [datetime] NOT NULL,
	[PE3_1] [float] NOT NULL,
	[TE3_1] [float] NOT NULL,
	[QE3_1] [float] NOT NULL,
	[FE3_1] [float] NOT NULL,
	[FE3_1_norm] [float] NOT NULL,
	[FE3_1_norm_Q] [float] NOT NULL,
	[PE3_2] [float] NOT NULL,
	[TE3_2] [float] NOT NULL,
	[FE3_2] [float] NOT NULL,
	[FE3_2_norm] [float] NOT NULL,
	[FE3_2_norm_Q] [float] NOT NULL,
	[PE3_3] [float] NOT NULL,
	[TE3_3] [float] NOT NULL,
	[FE3_3] [float] NOT NULL,
	[FE3_3_norm] [float] NOT NULL,
	[FE3_3_norm_Q] [float] NOT NULL,
	[PE3_4] [float] NOT NULL,
	[TE3_4] [float] NOT NULL,
	[FE3_4] [float] NOT NULL,
	[FE3_4_norm] [float] NOT NULL,
	[FE3_4_norm_Q] [float] NOT NULL,
	[QE3_2] [float] NOT NULL,
	[QE3_3] [float] NOT NULL,
	[QE3_4] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur05](
	[dt] [datetime] NOT NULL,
	[PE1_3] [float] NOT NULL,
	[TE1_3] [float] NOT NULL,
	[FE1_3] [float] NOT NULL,
	[QE1_3] [float] NOT NULL,
	[FE1_3_norm] [float] NOT NULL,
	[FE1_3_norm_Q] [float] NOT NULL,
	[PE1_4] [float] NOT NULL,
	[TE1_4] [float] NOT NULL,
	[FE1_4] [float] NOT NULL,
	[FE1_4_norm] [float] NOT NULL,
	[FE1_4_norm_Q] [float] NOT NULL,
	[PE3_9] [float] NOT NULL,
	[TE3_9] [float] NOT NULL,
	[FE3_9] [float] NOT NULL,
	[QE3_10] [float] NOT NULL,
	[FE3_9_norm] [float] NOT NULL,
	[FE3_9_norm_Q] [float] NOT NULL,
	[QE3_11] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur07](
	[dt] [datetime] NOT NULL,
	[PE2_1] [float] NOT NULL,
	[TE2_1] [float] NOT NULL,
	[FE2_1] [float] NOT NULL,
	[FE2_1_norm] [float] NOT NULL,
	[PE2_2] [float] NOT NULL,
	[TE2_2] [float] NOT NULL,
	[FE2_2] [float] NOT NULL,
	[FE2_2_norm] [float] NOT NULL,
	[PE2_3] [float] NOT NULL,
	[TE2_3] [float] NOT NULL,
	[FE2_3] [float] NOT NULL,
	[FE2_3_norm] [float] NOT NULL,
	[PE3_18] [float] NOT NULL,
	[TE3_16] [float] NOT NULL,
	[FE3_16] [float] NOT NULL,
	[QE3_18] [float] NOT NULL,
	[FE3_16_norm] [float] NOT NULL,
	[FE3_16_norm_Q] [float] NOT NULL,
	[PE3_19] [float] NOT NULL,
	[TE3_17] [float] NOT NULL,
	[FE3_17] [float] NOT NULL,
	[QE3_19] [float] NOT NULL,
	[FE3_17_norm] [float] NOT NULL,
	[FE3_17_norm_Q] [float] NOT NULL,
	[PE3_21] [float] NOT NULL,
	[TE3_19] [float] NOT NULL,
	[FE3_19] [float] NOT NULL,
	[QE3_21] [float] NOT NULL,
	[FE3_19_norm] [float] NOT NULL,
	[FE3_19_norm_Q] [float] NOT NULL,
	[PE3_25] [float] NOT NULL,
	[TE3_23] [float] NOT NULL,
	[FE3_23] [float] NOT NULL,
	[FE3_23_norm] [float] NOT NULL,
	[FE3_23_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur08](
	[dt] [datetime] NOT NULL,
	[PE3_14] [float] NOT NULL,
	[PE3_15] [float] NOT NULL,
	[PE3_16] [float] NOT NULL,
	[TE3_14] [float] NOT NULL,
	[FE3_14] [float] NOT NULL,
	[QE3_16] [float] NOT NULL,
	[FE3_14_norm] [float] NOT NULL,
	[FE3_14_norm_Q] [float] NOT NULL,
	[PE3_17] [float] NOT NULL,
	[TE3_15] [float] NOT NULL,
	[FE3_15] [float] NOT NULL,
	[QE3_17] [float] NOT NULL,
	[FE3_15_norm] [float] NOT NULL,
	[FE3_15_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur09](
	[dt] [datetime] NOT NULL,
	[PE3_10] [float] NOT NULL,
	[TE3_10] [float] NOT NULL,
	[FE3_10] [float] NOT NULL,
	[QE3_12] [float] NOT NULL,
	[FE3_10_norm] [float] NOT NULL,
	[FE3_10_norm_Q] [float] NOT NULL,
	[PE3_11] [float] NOT NULL,
	[TE3_11] [float] NOT NULL,
	[FE3_11] [float] NOT NULL,
	[QE3_13] [float] NOT NULL,
	[FE3_11_norm] [float] NOT NULL,
	[FE3_11_norm_Q] [float] NOT NULL,
	[PE3_12] [float] NOT NULL,
	[TE3_12] [float] NOT NULL,
	[FE3_12] [float] NOT NULL,
	[QE3_14] [float] NOT NULL,
	[FE3_12_norm] [float] NOT NULL,
	[FE3_12_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur10](
	[dt] [datetime] NOT NULL,
	[PE3_13] [float] NOT NULL,
	[TE3_13] [float] NOT NULL,
	[FE3_13] [float] NOT NULL,
	[QE3_15] [float] NOT NULL,
	[FE3_13_norm] [float] NOT NULL,
	[FE3_13_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempCur11](
	[dt] [datetime] NOT NULL,
	[PE_7103_04A_P06] [float] NOT NULL,
	[TE_7103_04A_T01] [float] NOT NULL,
	[FE_7103_04A_F02] [float] NOT NULL,
	[QE_7101_10_A66] [float] NOT NULL,
	[FE_7103_04A_F02_norm] [float] NOT NULL,
	[FE_7103_04A_F02_norm_Q] [float] NOT NULL,
	[PE_7103_04B_P06] [float] NOT NULL,
	[TE_7103_04B_T01] [float] NOT NULL,
	[FE_7103_04B_F02] [float] NOT NULL,
	[FE_7103_04B_F02_norm] [float] NOT NULL,
	[FE_7103_04B_F02_norm_Q] [float] NOT NULL,
	[PE_7105_04_P06] [float] NOT NULL,
	[TE_7105_04_T01] [float] NOT NULL,
	[FE_7105_04_F02] [float] NOT NULL,
	[FE_7105_04_F02_norm] [float] NOT NULL,
	[FE_7105_04_F02_norm_Q] [float] NOT NULL,
	[PE_7303_04_P06] [float] NOT NULL,
	[TE_7303_04_T01] [float] NOT NULL,
	[FE_7303_04_F02] [float] NOT NULL,
	[QE_7303_10_A56] [float] NOT NULL,
	[FE_7303_04_F02_norm] [float] NOT NULL,
	[FE_7303_04_F02_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum01](
	[dt] [datetime] NOT NULL,
	[PE1_1] [float] NOT NULL,
	[TE1_1] [float] NOT NULL,
	[QE1_1] [float] NOT NULL,
	[FE1_1] [float] NOT NULL,
	[FE1_1_norm] [float] NOT NULL,
	[FE1_1_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum02](
	[dt] [datetime] NOT NULL,
	[PE1_2] [float] NOT NULL,
	[TE1_2] [float] NOT NULL,
	[QE1_2] [float] NOT NULL,
	[FE1_2] [float] NOT NULL,
	[FE1_2_norm] [float] NOT NULL,
	[FE1_2_norm_Q] [float] NOT NULL,
	[PE3_20] [float] NOT NULL,
	[TE3_18] [float] NOT NULL,
	[QE3_20] [float] NOT NULL,
	[FE3_18] [float] NOT NULL,
	[FE3_18_norm] [float] NOT NULL,
	[FE3_18_norm_Q] [float] NOT NULL,
	[PE3_22] [float] NOT NULL,
	[TE3_20] [float] NOT NULL,
	[QE3_22] [float] NOT NULL,
	[FE3_20] [float] NOT NULL,
	[FE3_20_norm] [float] NOT NULL,
	[FE3_20_norm_Q] [float] NOT NULL,
	[PE3_23] [float] NOT NULL,
	[TE3_21] [float] NOT NULL,
	[QE3_23] [float] NOT NULL,
	[FE3_21] [float] NOT NULL,
	[FE3_21_norm] [float] NOT NULL,
	[FE3_21_norm_Q] [float] NOT NULL,
	[PE3_24] [float] NOT NULL,
	[TE3_22] [float] NOT NULL,
	[QE3_24] [float] NOT NULL,
	[FE3_22] [float] NOT NULL,
	[FE3_22_norm] [float] NOT NULL,
	[FE3_22_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum03](
	[dt] [datetime] NOT NULL,
	[PE3_5] [float] NOT NULL,
	[TE3_5] [float] NOT NULL,
	[QE3_5] [float] NOT NULL,
	[FE3_5] [float] NOT NULL,
	[FE3_5_norm] [float] NOT NULL,
	[FE3_5_norm_Q] [float] NOT NULL,
	[PE3_6] [float] NOT NULL,
	[TE3_6] [float] NOT NULL,
	[FE3_6] [float] NOT NULL,
	[FE3_6_norm] [float] NOT NULL,
	[FE3_6_norm_Q] [float] NOT NULL,
	[PE3_7] [float] NOT NULL,
	[TE3_7] [float] NOT NULL,
	[FE3_7] [float] NOT NULL,
	[FE3_7_norm] [float] NOT NULL,
	[FE3_7_norm_Q] [float] NOT NULL,
	[PE3_8] [float] NOT NULL,
	[TE3_8] [float] NOT NULL,
	[QE3_6] [float] NOT NULL,
	[FE3_8] [float] NOT NULL,
	[FE3_8_norm] [float] NOT NULL,
	[FE3_8_norm_Q] [float] NOT NULL,
	[QE3_7] [float] NOT NULL,
	[QE3_8] [float] NOT NULL,
	[QE3_9] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum04](
	[dt] [datetime] NOT NULL,
	[PE3_1] [float] NOT NULL,
	[TE3_1] [float] NOT NULL,
	[QE3_1] [float] NOT NULL,
	[FE3_1] [float] NOT NULL,
	[FE3_1_norm] [float] NOT NULL,
	[FE3_1_norm_Q] [float] NOT NULL,
	[PE3_2] [float] NOT NULL,
	[TE3_2] [float] NOT NULL,
	[FE3_2] [float] NOT NULL,
	[FE3_2_norm] [float] NOT NULL,
	[FE3_2_norm_Q] [float] NOT NULL,
	[PE3_3] [float] NOT NULL,
	[TE3_3] [float] NOT NULL,
	[FE3_3] [float] NOT NULL,
	[FE3_3_norm] [float] NOT NULL,
	[FE3_3_norm_Q] [float] NOT NULL,
	[PE3_4] [float] NOT NULL,
	[TE3_4] [float] NOT NULL,
	[FE3_4] [float] NOT NULL,
	[FE3_4_norm] [float] NOT NULL,
	[FE3_4_norm_Q] [float] NOT NULL,
	[QE3_2] [float] NOT NULL,
	[QE3_3] [float] NOT NULL,
	[QE3_4] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum05](
	[dt] [datetime] NOT NULL,
	[PE1_3] [float] NOT NULL,
	[TE1_3] [float] NOT NULL,
	[FE1_3] [float] NOT NULL,
	[QE1_3] [float] NOT NULL,
	[FE1_3_norm] [float] NOT NULL,
	[FE1_3_norm_Q] [float] NOT NULL,
	[PE1_4] [float] NOT NULL,
	[TE1_4] [float] NOT NULL,
	[FE1_4] [float] NOT NULL,
	[FE1_4_norm] [float] NOT NULL,
	[FE1_4_norm_Q] [float] NOT NULL,
	[PE3_9] [float] NOT NULL,
	[TE3_9] [float] NOT NULL,
	[FE3_9] [float] NOT NULL,
	[QE3_10] [float] NOT NULL,
	[FE3_9_norm] [float] NOT NULL,
	[FE3_9_norm_Q] [float] NOT NULL,
	[QE3_11] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum07](
	[dt] [datetime] NOT NULL,
	[PE2_1] [float] NOT NULL,
	[TE2_1] [float] NOT NULL,
	[FE2_1] [float] NOT NULL,
	[FE2_1_norm] [float] NOT NULL,
	[PE2_2] [float] NOT NULL,
	[TE2_2] [float] NOT NULL,
	[FE2_2] [float] NOT NULL,
	[FE2_2_norm] [float] NOT NULL,
	[PE2_3] [float] NOT NULL,
	[TE2_3] [float] NOT NULL,
	[FE2_3] [float] NOT NULL,
	[FE2_3_norm] [float] NOT NULL,
	[PE3_18] [float] NOT NULL,
	[TE3_16] [float] NOT NULL,
	[FE3_16] [float] NOT NULL,
	[QE3_18] [float] NOT NULL,
	[FE3_16_norm] [float] NOT NULL,
	[FE3_16_norm_Q] [float] NOT NULL,
	[PE3_19] [float] NOT NULL,
	[TE3_17] [float] NOT NULL,
	[FE3_17] [float] NOT NULL,
	[QE3_19] [float] NOT NULL,
	[FE3_17_norm] [float] NOT NULL,
	[FE3_17_norm_Q] [float] NOT NULL,
	[PE3_21] [float] NOT NULL,
	[TE3_19] [float] NOT NULL,
	[FE3_19] [float] NOT NULL,
	[QE3_21] [float] NOT NULL,
	[FE3_19_norm] [float] NOT NULL,
	[FE3_19_norm_Q] [float] NOT NULL,
	[PE3_25] [float] NOT NULL,
	[TE3_23] [float] NOT NULL,
	[FE3_23] [float] NOT NULL,
	[FE3_23_norm] [float] NOT NULL,
	[FE3_23_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum08](
	[dt] [datetime] NOT NULL,
	[PE3_14] [float] NOT NULL,
	[PE3_15] [float] NOT NULL,
	[PE3_16] [float] NOT NULL,
	[TE3_14] [float] NOT NULL,
	[FE3_14] [float] NOT NULL,
	[QE3_16] [float] NOT NULL,
	[FE3_14_norm] [float] NOT NULL,
	[FE3_14_norm_Q] [float] NOT NULL,
	[PE3_17] [float] NOT NULL,
	[TE3_15] [float] NOT NULL,
	[FE3_15] [float] NOT NULL,
	[QE3_17] [float] NOT NULL,
	[FE3_15_norm] [float] NOT NULL,
	[FE3_15_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum09](
	[dt] [datetime] NOT NULL,
	[PE3_10] [float] NOT NULL,
	[TE3_10] [float] NOT NULL,
	[FE3_10] [float] NOT NULL,
	[QE3_12] [float] NOT NULL,
	[FE3_10_norm] [float] NOT NULL,
	[FE3_10_norm_Q] [float] NOT NULL,
	[PE3_11] [float] NOT NULL,
	[TE3_11] [float] NOT NULL,
	[FE3_11] [float] NOT NULL,
	[QE3_13] [float] NOT NULL,
	[FE3_11_norm] [float] NOT NULL,
	[FE3_11_norm_Q] [float] NOT NULL,
	[PE3_12] [float] NOT NULL,
	[TE3_12] [float] NOT NULL,
	[FE3_12] [float] NOT NULL,
	[QE3_14] [float] NOT NULL,
	[FE3_12_norm] [float] NOT NULL,
	[FE3_12_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum10](
	[dt] [datetime] NOT NULL,
	[PE3_13] [float] NOT NULL,
	[TE3_13] [float] NOT NULL,
	[FE3_13] [float] NOT NULL,
	[QE3_15] [float] NOT NULL,
	[FE3_13_norm] [float] NOT NULL,
	[FE3_13_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TempSum11](
	[dt] [datetime] NOT NULL,
	[PE_7103_04A_P06] [float] NOT NULL,
	[TE_7103_04A_T01] [float] NOT NULL,
	[FE_7103_04A_F02] [float] NOT NULL,
	[QE_7101_10_A66] [float] NOT NULL,
	[FE_7103_04A_F02_norm] [float] NOT NULL,
	[FE_7103_04A_F02_norm_Q] [float] NOT NULL,
	[PE_7103_04B_P06] [float] NOT NULL,
	[TE_7103_04B_T01] [float] NOT NULL,
	[FE_7103_04B_F02] [float] NOT NULL,
	[FE_7103_04B_F02_norm] [float] NOT NULL,
	[FE_7103_04B_F02_norm_Q] [float] NOT NULL,
	[PE_7105_04_P06] [float] NOT NULL,
	[TE_7105_04_T01] [float] NOT NULL,
	[FE_7105_04_F02] [float] NOT NULL,
	[FE_7105_04_F02_norm] [float] NOT NULL,
	[FE_7105_04_F02_norm_Q] [float] NOT NULL,
	[PE_7303_04_P06] [float] NOT NULL,
	[TE_7303_04_T01] [float] NOT NULL,
	[FE_7303_04_F02] [float] NOT NULL,
	[QE_7303_10_A56] [float] NOT NULL,
	[FE_7303_04_F02_norm] [float] NOT NULL,
	[FE_7303_04_F02_norm_Q] [float] NOT NULL
) ON [PRIMARY]

GO
