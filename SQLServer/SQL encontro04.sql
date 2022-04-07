--SELECT * FROM Funcionario;

--SELECT Matricula_Funcionario, 
--Nome_Funcionario,
--Sobrenome_Funcionario
--FROM Funcionario

--SELECT Matricula_Funcionario AS 'Matrícula',
--Nome_Funcionario + Sobrenome_Funcionario AS 'Nome Completo'
--FROM Funcionario
GO

--SELECT Matricula_Funcionario AS 'Matrícula',
--TRIM(Nome_Funcionario) +' '+ TRIM(Sobrenome_Funcionario) AS 'Nome Completo'
--FROM Funcionario


--SELECT * 
--FROM Funcionario
--WHERE ID_Funcionario = 2

SELECT Matricula_Funcionario AS 'Matrícula',
TRIM(Nome_Funcionario) +' '+ TRIM(Sobrenome_Funcionario) AS 'Nome Completo'
FROM Funcionario
WHERE ID_Funcionario =10
GO
