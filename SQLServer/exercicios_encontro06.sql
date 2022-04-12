--EXERCÍCIO 01

--Select *
--  From Subcategoria
--  Where ID_Categoria = 5

-- Go

--EXERCÍCIO 02

--1) AS COLUNAS QUE VOCE DESEJA?
--2) DE QUAL TABELA?
--3) TEM FILTROS?

--Select 
-- ID_Subcategoria,
-- ID_Categoria,
-- Descricao_Subcategoria

-- From Subcategoria
-- Where ID_Categoria = 8
-- Go


--EXERCÍCIO 03

--Select Descricao_Subcategoria
--From Subcategoria
--Where ID_Categoria =12  and ID_Subcategoria = 72
--Go

--EXERCÍCIO 04

--SELECT ID_Subcategoria,ID_Categoria,Descricao_Subcategoria
--FROM Subcategoria
--Where (ID_Categoria = 10) OR (ID_Categoria = 15)
--Go
 
--EXERCICIO 05

 --SELECT 
 -- Categoria.ID_Categoria,
 -- Categoria.Descricao_Categoria,
 -- Subcategoria.ID_Subcategoria,
 -- Subcategoria.Descricao_Subcategoria
 -- FROM Subcategoria
 --INNER JOIN Categoria on Categoria.ID_Categoria=Subcategoria.ID_Categoria
 --  Where (Subcategoria.ID_Categoria=5)
  
--EXERCÍCIO 06

-- SELECT 
-- Categoria.Descricao_Categoria,
-- Subcategoria.Descricao_Subcategoria,
-- Subcategoria.Situacao

-- FROM Subcategoria
-- INNER JOIN Categoria ON Categoria.ID_Categoria=Subcategoria.ID_Categoria
--  Where (Subcategoria.ID_Categoria=3) or (Subcategoria.ID_Categoria=5) or ( Subcategoria.ID_Categoria=7) or (Subcategoria.ID_Categoria=9)
----PODE USAR ASSIM --> Where (Subcategoria.ID_Categoria IN (3,5,7,9))
