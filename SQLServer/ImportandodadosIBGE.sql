Primeiro fazer o RAW_DATA DAS TABELAS csv
Fazer INNER JOIN pela grafica
Criar Tabela Municipio
E fazer importacoes

INSERT INTO Municipio
           (ID_Municipio
		   ,IBGE_7
		   ,IBGE_6
           ,Nome_Municipio
           ,ID_UF
           ,SiglaUF
           ,Mesoregiao
           ,Microregiao
           ,Populacao_Municipio
           ,Porte_Municipio
           ,Cep_Municipio
          )

SELECT  RAW_DATA_Municipios.MunicipioID, 
		RAW_DATA_Lista_de_Municipio.IBGE, 
		RAW_DATA_Lista_de_Municipio.IBGE7,
		RAW_DATA_Municipios.Nome, 
		RAW_DATA_Municipios.UFID, 
		RAW_DATA_Lista_de_Municipio.UF, 
		RAW_DATA_Municipios.MesoregiaoID, 
		RAW_DATA_Municipios.MicroregiaoID, 
        RAW_DATA_Lista_de_Municipio.População_2010, 
		RAW_DATA_Lista_de_Municipio.Porte, 
		RAW_DATA_Cidades.CEP
	
FROM  RAW_DATA_Municipios INNER JOIN
     RAW_DATA_Lista_de_Municipio ON RAW_DATA_Municipios.CodigoIBGE = RAW_DATA_Lista_de_Municipio.IBGE7 LEFT OUTER JOIN-- no grafico clicar botao direito e selecionar a tabela que deseja todas as informacoes
     RAW_DATA_Cidades ON RAW_DATA_Lista_de_Municipio.IBGE = RAW_DATA_Cidades.IBGE
GO

SELECT * FROM Municipio
