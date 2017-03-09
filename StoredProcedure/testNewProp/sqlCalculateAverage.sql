/****** calculate average  ******/
DECLARE @ID integer = 1

DECLARE @DtBegin datetime = '2017-03-06';
DECLARE @DtEnd datetime = '2017-03-07';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

SELECT AVG([Value]) AS average
FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
WHERE ID = @ID AND dt BETWEEN @DtBeginFull AND @DtEndFull

