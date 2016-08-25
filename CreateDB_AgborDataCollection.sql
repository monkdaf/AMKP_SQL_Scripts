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

--- Insert data to table to CurData
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:00:00 +00:00', 1, 10.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:01:00 +00:00', 1, 11.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:02:00 +00:00', 1, 12.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:03:00 +00:00', 1, 13.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:04:00 +00:00', 1, 14.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:05:00 +00:00', 1, 15.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:06:00 +00:00', 1, 16.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:07:00 +00:00', 1, 17.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:08:00 +00:00', 1, 18.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:09:00 +00:00', 1, 19.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:10:00 +00:00', 1, 110.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:11:00 +00:00', 1, 111.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:12:00 +00:00', 1, 112.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:13:00 +00:00', 1, 113.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:14:00 +00:00', 1, 114.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:15:00 +00:00', 1, 115.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:16:00 +00:00', 1, 116.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:17:00 +00:00', 1, 117.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:18:00 +00:00', 1, 118.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:19:00 +00:00', 1, 119.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:20:00 +00:00', 1, 120.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:21:00 +00:00', 1, 121.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:22:00 +00:00', 1, 122.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:23:00 +00:00', 1, 123.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:24:00 +00:00', 1, 124.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:25:00 +00:00', 1, 125.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:26:00 +00:00', 1, 126.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:27:00 +00:00', 1, 127.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:28:00 +00:00', 1, 128.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:29:00 +00:00', 1, 129.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:30:00 +00:00', 1, 130.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:31:00 +00:00', 1, 131.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:32:00 +00:00', 1, 132.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:33:00 +00:00', 1, 133.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:34:00 +00:00', 1, 134.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:35:00 +00:00', 1, 135.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:36:00 +00:00', 1, 136.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:37:00 +00:00', 1, 137.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:38:00 +00:00', 1, 138.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:39:00 +00:00', 1, 139.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:40:00 +00:00', 1, 140.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:41:00 +00:00', 1, 141.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:42:00 +00:00', 1, 142.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:43:00 +00:00', 1, 143.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:44:00 +00:00', 1, 144.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:45:00 +00:00', 1, 145.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:46:00 +00:00', 1, 146.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:47:00 +00:00', 1, 147.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:48:00 +00:00', 1, 148.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:49:00 +00:00', 1, 149.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:50:00 +00:00', 1, 150.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:51:00 +00:00', 1, 151.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:52:00 +00:00', 1, 152.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:53:00 +00:00', 1, 153.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:54:00 +00:00', 1, 154.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:55:00 +00:00', 1, 155.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:56:00 +00:00', 1, 156.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:57:00 +00:00', 1, 157.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:58:00 +00:00', 1, 158.5);
INSERT INTO [dbo].[CurData](dt, ID, Value) VALUES ('20160815 08:59:00 +00:00', 1, 159.5);

--- Insert data to table to CurData
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 00:00:00 +00:00', 1, 100.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 01:00:00 +00:00', 1, 101.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 02:00:00 +00:00', 1, 102.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 03:00:00 +00:00', 1, 103.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 04:00:00 +00:00', 1, 104.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 05:00:00 +00:00', 1, 105.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 06:00:00 +00:00', 1, 106.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 07:00:00 +00:00', 1, 107.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 08:00:00 +00:00', 1, 108.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 09:00:00 +00:00', 1, 109.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 10:00:00 +00:00', 1, 1010.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 11:00:00 +00:00', 1, 1011.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 12:00:00 +00:00', 1, 1012.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 13:00:00 +00:00', 1, 1013.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 14:00:00 +00:00', 1, 1014.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 15:00:00 +00:00', 1, 1015.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 16:00:00 +00:00', 1, 1016.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 17:00:00 +00:00', 1, 1017.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 18:00:00 +00:00', 1, 1018.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 19:00:00 +00:00', 1, 1019.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 20:00:00 +00:00', 1, 1020.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 21:00:00 +00:00', 1, 1021.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 22:00:00 +00:00', 1, 1022.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 23:00:00 +00:00', 1, 1023.5);
INSERT INTO [dbo].[SumData](dt, ID, Value) VALUES ('20160815 23:59:00 +00:00', 1, 1024.5);

GO
