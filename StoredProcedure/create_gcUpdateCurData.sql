--- USE [KRR-PA-ISA95_PRODUCTION]
USE [KRR-PA-CNT-GasForISA95]
GO

---- delete procedure if exists
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[gcUpdateCurData]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[gcUpdateCurData]
END

---- body of procedure
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gcUpdateCurData] 
	@dt datetime,
	@ID int,
	@Value float
AS
BEGIN
	SET NOCOUNT ON;

    IF (SELECT COUNT(ID) FROM [dbo].[CurData] WHERE ID=@ID) = 0
		INSERT INTO [dbo].[CurData] (dt, ID, Value) VALUES (@dt, @ID, @VALUE)
	ELSE
		UPDATE [dbo].[CurData] SET dt=@dt, Value=@VALUE	WHERE ID=@ID
END

GO
