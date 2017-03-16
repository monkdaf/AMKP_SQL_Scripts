DECLARE @DtBegin datetime = dateadd(d, -7, DATEFROMPARTS(YEAR(GETDATE()), Month(GETDATE()), day(GETDATE()))); --'2017-02-22';
DECLARE @DtEnd datetime = GETDATE(); --'2017-02-23';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

DECLARE @ID int = 7;


SELECT ID, sum(value) AS Sum, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt)))) AS Date
FROM sumdata
WHERE id = @ID AND (dt BETWEEN @DtBeginFull AND @DtEndFull)
GROUP BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt))))
ORDER BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,5,dt)), Month(DATEADD(hh,5,dt)), day(DATEADD(hh,5,dt))))

SELECT [dt]
      ,[ID]
      ,[Value]
  FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
  WHERE id = @ID AND (dt BETWEEN @DtBeginFull AND @DtEndFull)
  ORDER BY dt
  
SELECT Sum(Value) AS Sum, @DtBeginFull, @DtEndFull
  FROM [KRR-PA-CNT-GasForISA95].[dbo].[SumData]
  WHERE id = @ID AND (dt BETWEEN @DtBeginFull AND @DtEndFull)
  
--Select id, sum(value), dateadd(d, 0, DATEFROMPARTS(YEAR(dt ), Month(dt), day(dt)))
--FROM sumdata
--WHERE id = 7 AND (dt BETWEEN @DtBeginFull AND @DtEndFull)
--GROUP BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(dt), Month(dt), day(dt)))
--ORDER BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(dt), Month(dt), day(dt)))

--SELECT ID, sum(value) AS Sum, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,19,dt) ), Month(DATEADD(hh,19,dt)), day(DATEADD(hh,19,dt)))) AS Date
--FROM sumdata
--WHERE id = 7 AND (dt BETWEEN @DtBeginFull AND @DtEndFull)
--GROUP BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,19,dt)), Month(DATEADD(hh,19,dt)), day(DATEADD(hh,19,dt))))
--ORDER BY id, dateadd(d, 0, DATEFROMPARTS(YEAR(DATEADD(hh,19,dt)), Month(DATEADD(hh,19,dt)), day(DATEADD(hh,19,dt))))
