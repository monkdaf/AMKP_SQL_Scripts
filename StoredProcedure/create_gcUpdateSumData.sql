--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcUpdateSumData]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcUpdateSumData]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcUpdateSumData]
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [dbo].[SumData] WHERE ID=@ID AND dt=@dt) = 0
		INSERT INTO [dbo].[SumData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [dbo].[SumData] SET Value=@VALUE	WHERE ID=@ID AND dt=@dt
END

GO
