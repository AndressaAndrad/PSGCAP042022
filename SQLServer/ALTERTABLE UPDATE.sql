--SELECT * FROM EXERCICIO
--GO

--SELECT *
--FROM EXERCICIO
--WHERE Idade_Exercicio BETWEEN 23 AND 25 --//ENTRE INTERVALOS//--
--GO

--SELECT *
--FROM EXERCICIO
--WHERE Idade_Exercicio >= 18 --//MAIOR QUE//--
--GO

--ALTER TABLE Exercicio
--   ALTER COLUMN 
--		Nota_Exercicio DECIMAL(7,2) --//ALTERAR COLUNA//--
--GO

--ALTERAR 

--SELECT * 
--FROM Exercicio
----WHERE Idade_Exercicio = 23
 
 --UPDATE Exercicio           --//ALTERAR REGISTRO DOS DADOS//--
 --SET Situacao  = 0
 --WHERE Idade_Exercicio = 23

 --SELECT *
 --FROM Exercicio
 --WHERE Nota_Exercicio <6

-- UPDATE Exercicio
--SET 
--    Idade_Exercicio = 15
--WHERE Nota_Exercicio < 6AL

-----//EXERCICIO ADCIONAR COLUNA,ALTERAR REGISTROS//-----

ALTER TABLE Exercicio
	ADD Estado_Atual CHAR(1) NULL 
GO

SELECT * FROM Exercicio
 
 UPDATE Exercicio
SET 
   Estado_Atual = 'R'
WHERE Nota_Exercicio < 6

UPDATE Exercicio
SET 
   Estado_Atual = 'A'
WHERE Nota_Exercicio >= 6

 

    
