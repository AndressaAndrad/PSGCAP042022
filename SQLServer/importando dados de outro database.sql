--Criar tabela em outro database primeiro passo
CREATE TABLE Funcionario_Temp
(
	ID_Funcionario_Temp  bigint  NOT NULL,
	Matricula_Funcionario  bigint  NOT NULL,
	Nome_Funcionario  varchar (50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(max) NOT NULL,
	ID_Pais int NOT NULL,
	Data_Admissao_Funcionario datetime NOT NULL, 
	Ctps_Funcionario varchar(50) NOT NULL,
	Situacao bit NULL default 1,
	DataInclusao datetime NULL default GETDATE(),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_Funcionario_Temp PRIMARY KEY (ID_Funcionario_Temp)
)
GO
---terceiro passo deixar o select e colocar o mesmo nomes de tabelas igual abaixo
INSERT INTO Funcionario_Temp(
	ID_Funcionario_Temp, 
	Matricula_Funcionario,
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Data_Admissao_Funcionario, 
	Ctps_Funcionario, 
	Sexo_Funcionario, 
	Datanasc_Funcionario, 
    Email_Funcionario,
	ID_Pais
)
---segundo passo abrir o database onde quero criar e selecionar nomedodatabase.dbo.nomedatabela
SELECT        
	FDP.ID_Funcionario, 
	FDP.Matricula_Funcionario, 
	FDP.Nome_Funcionario, 
	FDP.Sobrenome_Funcionario, 
	FDE.Data_Admissao_Funcionario, 
	FDE.Ctps_Funcionario, 
	FDP.Sexo_Funcionario, 
	FDP.Datanasc_Funcionario, 
    FDP.Email_Funcionario,
	FDP.ID_Pais
FROM Atacado202204.dbo.Funcionario_Dados_Empresa AS FDE INNER JOIN
    Atacado202204.dbo.Funcionario_Dados_Pessoais AS FDP ON FDE.Matricula_Funcionario = FDP.Matricula_Funcionario
GO
