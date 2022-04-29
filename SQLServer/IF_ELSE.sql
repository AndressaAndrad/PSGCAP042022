DECLARE @SITUACAO CHAR(1)

SET @SITUACAO ='I'

IF (@SITUACAO = 'A')
BEGIN
	SELECT * FROM Tabela WHERE (Situacao = 'A') ORDER BY Nome ASC
END
ELSE IF (@SITUACAO = 'I')
BEGIN
	SELECT * FROM Tabela WHERE (Situacao = 'I') ORDER BY Nome ASC
END
ELSE IF (@SITUACAO <> 'A') AND (@SITUACAO <> 'I')
BEGIN
	PRINT 'INFORME O CÓDIGO ADEQUADO'
END
----------------------------------------------------------------------------------------------------------------------------------------------------------------
Fiz um create mas estava com o set e tive que fazer um alter
ALTER PROCEDURE SP_TABELA_ATIVO_INATIVO
@SITUACAO CHAR(1)
AS
BEGIN
	IF (@SITUACAO = 'A')
	BEGIN
		SELECT * FROM Tabela WHERE (Situacao = 'A') ORDER BY Nome ASC
	END
	ELSE IF (@SITUACAO = 'I')
	BEGIN
		SELECT * FROM Tabela WHERE (Situacao = 'I') ORDER BY Nome ASC
	END
	ELSE IF (@SITUACAO <> 'A') AND (@SITUACAO <> 'I')
	BEGIN
		PRINT 'INFORME O CÓDIGO ADEQUADO'
	END
END
GO

--EXEC SP_TABELA_ATIVO_INATIVO 'O'
--GO
