SElECT 
   
   Categoria.Descricao_Categoria AS 'Nome da Categoria',
   Subcategoria.Descricao_Subcategoria AS 'Nome da Subcategoria',
   Produto.Descricao_Produto AS 'Nome do Produto'
   
FROM PRODUTO

INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

WHERE (Categoria.Descricao_Categoria LIKE 'BEBIDAS%') AND (Subcategoria.Descricao_Subcategoria LIKE '%REFRESCO%') 
AND (Produto.Descricao_Produto LIKE '%TANG%')

GO

SELECT COUNT (*) AS 'QUANTIDADES DE REGISTRO'
   
FROM PRODUTO

INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria
 
WHERE (Categoria.Descricao_Categoria LIKE 'BEBIDAS%') AND (Subcategoria.Descricao_Subcategoria LIKE '%REFRESCO%') 
AND (Produto.Descricao_Produto LIKE '%TANG%')
