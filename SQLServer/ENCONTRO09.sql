-------------------------ENCONTRO 09 18/04/2022-------------------------

1) DATABASE ATACADO202204
1.1) ADCIONAR A COLUNA DataAlteracao.
1.2) ADCIONAR A COLUNA DataExclusao.
ALTER TABLE Categoria
	ADD DataAlteracao DATETIME NULL,
		DataExclusao DATETIME NULL
GO

ALTER TABLE Subcategoria
	ADD DataAlteracao DATETIME NULL,
		DataExclusao DATETIME NULL
GO

ALTER TABLE Produto
	ADD DataAlteracao DATETIME NULL,
		DataExclusao DATETIME NULL
GO

2) ADCIONAR A TABELA CLIENTE.

	CREATE TABLE Cliente (
	ID_Cliente INT not null IDENTITY(1,1),
	Nome_Cliente VARCHAR(MAX) NOT NULL,
	Endereco_Cliente VARCHAR(MAX) NOT NULL,
	Cpf_Cliente VARCHAR(14) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL
	CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente)
)
GO
	
3) ADCIONAR A TABELA CARRINHO.

	CREATE TABLE Carrinho (
	ID_Carrinho INT NOT NULL IDENTITY(1,1),
	ID_Pedido INT NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL
	CONSTRAINT PK_Carrinho PRIMARY KEY (ID_Carrinho)
)
GO

4) ADCIONAR A TABELA CARRINHO_ITENS.
	
	CREATE TABLE Carrinho_Itens (
	ID_Carrinho_Itens INT NOT NULL IDENTITY(1,1),
	ID_Carrinho INT NOT NULL,
	ID_Produto INT NOT NULL,
	Qtde_Produto INT NOT NULL ,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL

	CONSTRAINT PK_Carrinho_Itens PRIMARY KEY (ID_Carrinho_Itens),
	CONSTRAINT FK_Carrinho_Carrinho_Itens FOREIGN KEY (ID_Carrinho) REFERENCES Carrinho (ID_Carrinho),
	CONSTRAINT FK_Produto_Carrinho_Itens FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto)
)
GO

5) ADCIONAR A TABELA PEDIDO.
	
	CREATE TABLE Pedido(
	ID_Pedido INT NOT NULL IDENTITY(1,1),
	ID_Cliente INT NOT NULL,
	ID_Carrinho INT NOT NULL,
	Observacao_Pedido VARCHAR(MAX) NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL

	CONSTRAINT PK_Pedido PRIMARY KEY (ID_Pedido)
)
GO

SELECT * FROM Exercicio	WHERE (Situacao = 1)

SELECT * FROM Exercicio	WHERE (Nota_Exercicio < 4)

ALTER TABLE Exercicio

	ADD DataAlteracao DATETIME NULL,
		DataExclusao DATETIME NULL
GO

UPDATE Exercicio
SET
	Situacao=0,
	DataAlteracao = GETDATE(),
	DataExclusao = GETDATE()

WHERE Nota_Exercicio < 4
 

