SET IDENTITY_INSERT Funcionario ON
INSERT INTO Funcionario(
	ID_Funcionario, 
	ID_FuncDadosEmpresa, 
	Matricula_Funcionario, 
	Nome_Funcionario, 
	Sobrenome_Funcionario, 
	Sexo_Funcionario, 
	Datanasc_Funcionario, 
	Email_Funcionario, 
    Data_Admissao_Funcionario, 
	Ctps_Funcionario, 
	Ctps_Num_Funcionario, 
	Ctps_Serie_Funcionario, 
	Situacao,
	ID_Pais
)

SELECT 
	FDP.ID_Funcionario, 
	FDE.ID_FuncDadosEmpresa, 
	FDP.Matricula_Funcionario, 
	FDP.Nome_Funcionario, 
	FDP.Sobrenome_Funcionario, 
	FDP.Sexo_Funcionario, 
	FDP.Datanasc_Funcionario, 
	FDP.Email_Funcionario,
    FDE.Data_Admissao_Funcionario, 
	FDE.Ctps_Funcionario, 
	FDE.Ctps_Num_Funcionario, 
	FDE.Ctps_Serie_Funcionario, 
	FDE.Situacao,
	FDP.ID_Pais
FROM	Funcionario_Dados_Empresa AS FDE  INNER JOIN
        Funcionario_Dados_Pessoais AS FDP ON FDE.Matricula_Funcionario = FDP.Matricula_Funcionario

SET IDENTITY_INSERT Funcionario OFF 
