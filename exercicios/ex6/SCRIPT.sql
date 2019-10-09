CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno(
	Id_Candidato INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Forma_Pagamento VARCHAR(10),
	Id_Curso INT REFERENCES curso(Id_Curso)
);

CREATE TABLE curso(
	Id_Curso INT IDENTITY PRIMARY KEY NOT NULL,
	Avaliacao FLOAT,
	Categoria VARCHAR(15),
);


INSERT INTO aluno(Nome, Forma_Pagamento, Id_Curso) 
VALUES 
	('Gustavo M.', 'Avista', 1),
	('Priscila U.', 'Parcelado', 2),
	('Larissa O.', 'Avista', 3);

INSERT INTO curso(Avaliacao, Categoria) 
VALUES 
	(9.4, 'CodeXD'),
	(8.3, 'Informática'),
	(5.7, 'História');


SELECT * FROM aluno;
SELECT * FROM curso;


DROP TABLE aluno;
DROP TABLE curso;