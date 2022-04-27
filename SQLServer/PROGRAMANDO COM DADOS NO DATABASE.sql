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
