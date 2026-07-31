-- ============================================================
-- PROJETO SOCIOECONÔMICO - SCRIPTS SQL (DBEAVER)
-- Manipulação de Dados e Análise Exploratória Relacional
-- ============================================================

-- 1. Manipulação e Estruturação de Tabelas (DDL & DML)
ALTER TABLE Municipios_Brasileiros ADD COLUMN pais TEXT;
UPDATE Municipios_Brasileiros SET pais = 'Brasil';
ALTER TABLE Municipios_Brasileiros DROP COLUMN pais;

-- 2. Consultas e Filtros de Busca
SELECT * FROM Municipios_Brasileiros WHERE Cidade = 'Uberaba';
SELECT * FROM Municipios_Brasileiros WHERE Cidade LIKE 'Uber%';
SELECT * FROM Municipio_Status WHERE populacao_residente > 50000;

-- 3. Cruzamento de Dados (JOINs)
SELECT 
    MB.Cidade, 
    MS.populacao_residente 
FROM Municipios_Brasileiros MB
INNER JOIN Municipio_Status MS 
    ON MB.Municipio_ID = MS.municipio_ID;

-- 4. Análise Agregada e Demográfica por Região / Estado
SELECT Estado, COUNT(Cidade) AS total_cidades 
FROM Municipios_Brasileiros 
GROUP BY Estado 
ORDER BY total_cidades DESC;

SELECT 
    SUM(pessoas_brancas) AS total_brancas, 
    SUM(pessoas_pretas_pardas) AS total_pretas_pardas 
FROM Gerencia_Regiao;

SELECT Regiao, MAX(pessoas_pretas_pardas) AS max_pretas_pardas FROM Gerencia_Regiao;
SELECT Regiao, MIN(pessoas_pretas_pardas) AS min_pretas_pardas FROM Gerencia_Regiao;

SELECT Regiao 
FROM Gerencia_Regiao 
WHERE gerencia_branca > gerencia_pretas_pardas;
