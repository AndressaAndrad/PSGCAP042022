-------------------------ENCONTRO 10 19/04/2022-------------------------

USAR O DATABASE ATACADAO20204

1) ADCIONAR TABELA Forma_Envio
	
	CREATE TABLE Forma_Envio (

	ID_Forma_Envio INT NOT NULL IDENTITY (1,1),
	Descricao_Forma_Envio VARCHAR(MAX) NOT NULL,
	Valor_Por_Quilo_Forma_Envio DECIMAL(9,2) NOT NULL,
	Situacao BIT NULL DEFAULT 1, 
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL

	CONSTRAINT PK_Forma_Envio PRIMARY KEY (ID_Forma_Envio) 
)
GO

2) ADCIONAR TABELA Forma_Pagto
	
	CREATE TABLE Forma_Pagto (

	ID_Forma_Pagto INT NOT NULL IDENTITY (1,1),
	ID_Tipo_Forma_Pagto INT NOT NULL,
	Descricao_Forma_Envio VARCHAR(MAX) NOT NULL,
	Situacao BIT NULL DEFAULT 1, 
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL

	CONSTRAINT PK_Forma_Pagto PRIMARY KEY  (ID_Forma_Pagto),
	CONSTRAINT FK_Forma_Pagto_Tipo_Forma_Pagto FOREIGN KEY (Forma_Pagto) REFERENCES Forma_Pagto (ID_Tipo_Forma_Pagto)
)
GO
	
3) ADICIONAR Tipo_Forma_Pagto

	CREATE TABLE Tipo_Forma_Pagto (
	
	ID_Tipo_Forma_Pagto INT NOT NULL IDENTITY(1,1),
	Descricao_Forma_Pagto VARCHAR(MAX) NOT NULL,
	Situacao BIT NULL DEFAULT 1, 
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL
	
	CONSTRAINT PK_Tipo_Forma_Pagto PRIMARY KEY (ID_Tipo_Forma_Pagto)
	
	)
GO

