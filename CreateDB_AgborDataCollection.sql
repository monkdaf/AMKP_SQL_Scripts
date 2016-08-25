--- create DB
CREATE DATABASE AgborDataCollection
GO

--- use DB as default one
USE [AgborDataCollection]
GO

--- create table 
CREATE TABLE [dbo].[CurData](
	[dt] [datetimeoffset] NOT NULL,
	[ID] [int] NOT NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[SumData](
	[dt] [datetimeoffset] NOT NULL,
	[ID] [int] NOT NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]

GO
