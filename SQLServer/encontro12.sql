/* Criando uma nova tabela, importando dados */
/* 1 passo */
CREATE TABLE Funcionario_Dados_Pessoais (
	ID_Funcionario bigint NOT NULL,
	Matricula_Funcionario BIGINT NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(MAX) NOT NULL,
	ID_Pais int NOT NULL,
	Situacao bit NULL DEFAULT 1,
	DataInclusao datetime NULL DEFAULT getdate (),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_FuncDadosPessoais PRIMARY KEY (ID_Funcionario )
)
GO
 /*2 passo*/
INSERT INTO Funcionario_Dados_Pessoais (
	ID_Funcionario,
	Matricula_Funcionario,
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Sexo_Funcionario,
	Datanasc_Funcionario,
	Email_Funcionario,
	ID_Pais,Situacao,
	DataInclusao,
	DataAlteracao,
	DataExclusao)
SELECT 
	ID_Funcionario,
	CONVERT(BIGINT, Matricula) AS Matricula_Funcionario, 
	Nome_Funcionario,
	Sobrenome_Funcionario, 
	Sexo_Funcionario, 
	Datanasc_Funcionario, 
	Email_Funcionario, 
	ID_Pais, 
	Situacao, 
	DataInclusao, 
	DataAlteracao, 
	DataExclusao
FROM Funcionario

/* Criando tabela*/
CREATE TABLE Funcionarios_Dados_Empresa(
	ID_FuncDadosEmpresa BIGINT NOT NULL IDENTITY (1,1),
	Matricula_Funcionario BIGINT NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Data_Admissao_Funcionario datetime NOT NULL,
	Ctps_Funcionario varchar(50) NOT NULL,
	Ctps_Num_Funcionario bigint NOT NULL,
	Ctps_Serie_Funcionario int NOT NULL,
	Situacao bit NULL DEFAULT 1,
	DataInclusao datetime NULL DEFAULT getdate (),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_FuncDadosEmpresa PRIMARY KEY (ID_FuncDadosEmpresa )
) 
GO

/*importando dados*/
INSERT INTO Funcionarios_Dados_Empresa(
	Matricula_Funcionario ,
	Nome_Funcionario ,
	Sobrenome_Funcionario ,
	Data_Admissao_Funcionario ,
	Ctps_Funcionario ,
	Ctps_Num_Funcionario ,
	Ctps_Serie_Funcionario
)
SELECT  chave, 
		nome,
		sobrenome, 
		CONVERT(datetime, dataadmissao) AS dataadmissao,
		ctps, 
		ctpsnum, 
		ctpsserie
FROM RAW_DATA_Funcionarios_Dados_Empresa

PROGRAMANDO 
SELECT GETDATE() AS 'Data Atual',
	 DAY(GETDATE()) AS 'Dia Atual',
	 MONTH(GETDATE()) AS 'Mês Atual',
	 YEAR (GETDATE()) AS 'Ano Atual'

DECLARE @MENSAGEM VARCHAR(MAX)
SET @MENSAGEM = 'OI MUNDOO'
SELECT @MENSAGEM
GO 
