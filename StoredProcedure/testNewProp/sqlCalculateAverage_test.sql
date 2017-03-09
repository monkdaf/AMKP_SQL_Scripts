/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [dt], DATEADD(day,-2, [dt])
      ,[ID]
      ,[Value]
  FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
  where ID = 1 and dt >= '2017-03-09 08:00'
  ORDER BY dt desc
GO

  /****** calculate average  ******/
DECLARE @DtTest datetime;
SELECT MAX([dt]) AS MaxTime, MIN([dt]) AS MinTime FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
--SELECT MAX([dt]) AS @DtTest FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]

GO

  /****** calculate average  ******/
DECLARE @ID integer = 1

DECLARE @DtBegin datetime = '2017-03-06';
DECLARE @DtEnd datetime = '2017-03-07';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';


SELECT AVG([Value]) AS average
FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
WHERE ID = @ID AND dt BETWEEN @DtBeginFull AND @DtEndFull

GO