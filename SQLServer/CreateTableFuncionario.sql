CREATE TABLE Funcionario (
	[ID_Funcionario] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_FuncDadosEmpresa] [bigint] NOT NULL,
	[Matricula_Funcionario] [bigint] NOT NULL,
	[Nome_Funcionario] [varchar](50) NOT NULL,
	[Sobrenome_Funcionario] [varchar](50) NOT NULL,
	[Datanasc_Funcionario] [datetime] NOT NULL,
	[Sexo_Funcionario] [char](1) NOT NULL,
	[Email_Funcionario] [varchar](max) NOT NULL,
	[ID_Pais] [int] NOT NULL,
	[Data_Admissao_Funcionario] [datetime] NOT NULL,
	[Ctps_Funcionario] [varchar](50) NOT NULL,
	[Ctps_Num_Funcionario] [bigint] NOT NULL,
	[Ctps_Serie_Funcionario] [int] NOT NULL,
	[Situacao] [bit] NULL DEFAULT 1,
	[DataInclusao] [datetime] NULL DEFAULT GETDATE(),
	[DataAlteracao] [datetime] NULL,
	[DataExclusao] [datetime] NULL,
	CONSTRAINT PK_Funcionario PRIMARY KEY (ID_Funcionario)
)
GO
