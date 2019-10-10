/* INSERIR DADO DE UM ALUNO */
INSERT INTO aluno(
	Nome,
	Ra, 
	Idade
) VALUES(
	'Bruna',
	'R124',
	22
);

/* INSERIR DADO DE UM MATERIA */
INSERT INTO materia(
	materia
) VALUES(
	'Português'
);


/* ALTERAR DADO(S) */
UPDATE aluno SET 
	Nome='Bruna Ribeiro',
	Idade=23
WHERE IdALuno = 2;

/* EXCLUIR DADO */
DELETE FROM materia
WHERE IdMateria = 2;

--TRUNCATE - apaga todos os registros de uma tabela
TRUNCATE TABLE trabalho;