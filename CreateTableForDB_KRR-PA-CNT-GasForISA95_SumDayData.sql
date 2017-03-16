--- create table for summary data
CREATE TABLE [dbo].[SumHourData](
	[dt] [datetimeoffset] NOT NULL,
	[ID] [int] NOT NULL,
	[Value] [real] NOT NULL
) ON [PRIMARY]

GO
