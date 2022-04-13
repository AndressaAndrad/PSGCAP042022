--SELECT *
--FROM Produto
--WHERE (Descricao_Produto LIKE '%COCA%') AND (ID_Categoria = 3)
--GO


--EXERCICIO 01 ---(junção interna)
--SElECT 
   
--   Categoria.ID_Categoria,
--   Categoria.Descricao_Categoria,
--   Subcategoria.ID_Subcategoria,
--   Subcategoria.Descricao_Subcategoria,
--   Produto.ID_Produto,
--   Produto.Descricao_Produto
   
--FROM PRODUTO

--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

--------------------------------------------------------------------------------------------------

--EXERCICIO 02---(junção interna)
 
-- SElECT 
   
--   Categoria.ID_Categoria,
--   Categoria.Descricao_Categoria,
--   Subcategoria.ID_Subcategoria,
--   Subcategoria.Descricao_Subcategoria,
--   Produto.ID_Produto,
--   Produto.Descricao_Produto
   
--FROM PRODUTO

--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

--WHERE Descricao_Produto LIKE 'GIM%'

--GO
-------------------------------------------------------------------------------------------------------
--EXERCICIO 03---(junção interna)

-- SELECT 
   
--   Categoria.ID_Categoria,
--   Categoria.Descricao_Categoria,
--   Subcategoria.ID_Subcategoria,
--   Subcategoria.Descricao_Subcategoria,
--   Produto.ID_Produto,
--   Produto.Descricao_Produto
   
--FROM PRODUTO

--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

--WHERE (Subcategoria.Descricao_Subcategoria LIKE 'suco%') and (Produto.Descricao_Produto LIKE '%maguary%')
--GO

--EXEMPLO-- Dar nome para colunas

--SELECT 
   
--   Categoria.ID_Categoria AS 'Código da Categoria',
--   Categoria.Descricao_Categoria AS 'Nome da Categoria',
--   Subcategoria.ID_Subcategoria AS 'Código da Subcategoria',
--   Subcategoria.Descricao_Subcategoria AS 'Nome da Subcategoria',
--   Produto.ID_Produto AS 'Código da Produto',
--   Produto.Descricao_Produto AS 'Nome do Produto'
   
--FROM PRODUTO

--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

--WHERE (Subcategoria.Descricao_Subcategoria LIKE 'suco%') and (Produto.Descricao_Produto LIKE '%maguary%')
--GO
 

 --Exemplo
 
--SELECT COUNT(*) AS 'Quantidade de Produtos' FROM Produto --contar linhas--

--SELECT TOP 10 * FROM Produto --listar 10 primeiras--

--SELECT ID_Produto,ID_Subcategoria,ID_Categoria,Descricao_Produto,Situacao,DataInclusao
--FROM Produto
--ORDER BY Descricao_Produto --listar em ordem alfabetica--

--SELECT ID_Produto,ID_Subcategoria,ID_Categoria,Descricao_Produto,Situacao,DataInclusao
--FROM Produto
--WHERE (ID_Categoria = 13)
--AND (Descricao_Produto LIKE '%SECA%')
--ORDER BY Descricao_Produto --listar em ordem alfabetica com filtros--
