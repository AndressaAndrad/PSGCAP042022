SELECT TOP 10
 
  Categoria.Descricao_Categoria AS 'Nome da Categoria',
  Subcategoria.Descricao_Subcategoria AS 'Nome da Subcategoria',
  Produto.Descricao_Produto AS 'Nome do Produto'

FROM PRODUTO

INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
INNER JOIN Categoria ON Categoria.ID_Categoria=Produto.ID_Categoria

WHERE (Categoria.ID_Categoria= 4) 
AND (Produto.Descricao_Produto LIKE '%ADRIA%')


SELECT COUNT (*) AS 'QUANTIDADES DE REGISTRO'
   
FROM PRODUTO

INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria=Produto.ID_Subcategoria
INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria

WHERE (Categoria.ID_Categoria= 4) 
AND (Produto.Descricao_Produto LIKE '%ADRIA%')
