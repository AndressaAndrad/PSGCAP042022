--SEGUNDO PASSO DESENVOLVER UMA PROGRAMAÇÃO
DECLARE @ANO INT 
DECLARE @MES INT
DECLARE @DIA INT

SET @ANO = 1985
SET @MES = 5
SET @DIA = 1

SELECT --PRIMEIRO PASSO	PESQUISAR
	Matricula_Funcionario, 
	ID_FuncDadosEmpresa, 
	Nome_Funcionario, 
	Sobrenome_Funcionario, 
	Data_Admissao_Funcionario, 
	Ctps_Funcionario

FROM  Funcionario_Dados_Empresa
WHERE YEAR(Data_Admissao_Funcionario) = @ANO
AND MONTH(Data_Admissao_Funcionario) = @MES
AND DAY(Data_Admissao_Funcionario) = @DIA
ORDER BY Data_Admissao_Funcionario ASC


--CRIANDO (PROGRAMA DE ARMAZENAMENTO) STORED PROCEDURES-- TERCEIRO PASSO

CREATE PROCEDURE SP_Buscar_Funcionario_Por_Data_Admissao
 @ANO INT,
 @MES INT,
 @DIA INT
AS
BEGIN
	SELECT 
		Matricula_Funcionario, 
		ID_FuncDadosEmpresa, 
		Nome_Funcionario, 
		Sobrenome_Funcionario, 
		Data_Admissao_Funcionario, 
		Ctps_Funcionario

	FROM  Funcionario_Dados_Empresa
	WHERE YEAR(Data_Admissao_Funcionario) = @ANO
	AND MONTH(Data_Admissao_Funcionario) = @MES
	AND DAY(Data_Admissao_Funcionario) = @DIA
	ORDER BY Data_Admissao_Funcionario ASC  
END;

--PARA EXECUTAR
EXEC SP_Buscar_Funcionario_Por_Data_Admissao  1985,3,10
