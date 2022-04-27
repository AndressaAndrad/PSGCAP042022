DECLARE @TOTALREGISTROS INT
DECLARE @CHAVEINICIAL INT
DECLARE @CHAVESELECIONADA INT


SET @TOTALREGISTROS = (SELECT COUNT(*) FROM Funcionario_Temp)-->nome da tabela dentro do database
SET @CHAVEINICIAL = (SELECT MIN(ID_Funcionario_Temp) FROM Funcionario_Temp)-->nome da tabela dentro do database
SET @CHAVESELECIONADA = (SELECT FLOOR(RAND()*(@TOTALREGISTROS - @CHAVEINICIAL) + @CHAVEINICIAL))

SELECT  *
FROM Funcionario_Temp -->nome da tabela dentro do database
WHERE ID_Funcionario_Temp = @CHAVESELECIONADA

GO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Para não dar tabela zerada.

DECLARE @TOTALREGISTROS INT
DECLARE @CHAVEINICIAL INT
DECLARE @CHAVESELECIONADA INT
DECLARE @QTDE INT

SET @QTDE = 0
WHILE (@QTDE = 0)
BEGIN
	SET @TOTALREGISTROS = (SELECT COUNT(*) FROM Funcionario_Temp)
	SET @CHAVEINICIAL = (SELECT MIN(ID_Funcionario_Temp) FROM Funcionario_Temp)
	SET @CHAVESELECIONADA = (SELECT FLOOR(RAND()*(@TOTALREGISTROS - @CHAVEINICIAL) + @CHAVEINICIAL))
	SET @QTDE = (SELECT COUNT(*) FROM Funcionario_Temp WHERE ID_Funcionario_Temp = @CHAVESELECIONADA)
END

SELECT  *
FROM Funcionario_Temp
WHERE ID_Funcionario_Temp = @CHAVESELECIONADA

GO
