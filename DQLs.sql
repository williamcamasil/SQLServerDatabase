/* MOSTRAR DADOS */
SELECT * FROM aluno;

SELECT * FROM materia;

/*MOSTRAR DADOS EM UMA "BUSCA" COM LIKE  -- % ENTRE AS ASPAS */
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%'

/* ORDENAR POR NOME DO ALUNO DE FORMA ASCENDENTE */
SELECT * FROM aluno ORDER BY Nome ASC;

/* ORDENAR POR NOME DO ALUNO DE FORMA DECRESCENTE */
SELECT * FROM aluno ORDER BY Nome DESC;


--JUNTAMOS AS 3 TABELAS COM INNER JOIN
SELECT * FROM trabalho
INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;


--JUNTAMOS AS 3 TABELAS COM INNER JOIN
--Deixamos somente os dados que nos interessam no momento
SELECT 
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;



/*	Utilizamos a função nativa COUNT
	para retornar o número de registros
	na minha tabela
*/

/* Usamoso o ALIAS "AS" para nomear a coluna */

SELECT COUNT(*) AS total_registros FROM aluno;

/* Pegamos a idade máxima dos alunos */
SELECT MAX(idade) AS idade_maxima FROM aluno;

/* Pegamos a idade mínima dos alunos */
SELECT MIN(idade) AS idade_minima FROM aluno;

/* Pegamos a média da idade dos alunos */
SELECT AVG(idade) AS idade_média FROM aluno;

/* Somamos as idades */
SELECT SUM(idade) AS soma_idades FROM aluno;

/* Juntamos todas as funções em uma única consulta */
SELECT 
	COUNT(*) AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(idade) AS idade_média,
	SUM(idade) AS soma_idades
FROM aluno;


--SUBSTRING
SELECT SUBSTRING(Nome, 0, 2) AS cortado FROM aluno;

--UPPER - Deixar tudo em maisculo
SELECT UPPER (Nome) AS Nome FROM aluno;

--LOWER - Deixar tudo em minusculo
SELECT LOWER (Nome) AS Nome FROM aluno;