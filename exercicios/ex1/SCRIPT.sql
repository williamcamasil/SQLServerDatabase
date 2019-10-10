CREATE DATABASE classe;

USE classe;

CREATE TABLE aluno(
	Id_Aluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);

CREATE TABLE trabalho(
	Id_Trabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(30) NOT NULL
);

CREATE TABLE nota(
	Id_Nota INT IDENTITY PRIMARY KEY NOT NULL,
	Nota FLOAT NOT NULL,
	Id_Aluno INT REFERENCES aluno(Id_Aluno),
	Id_Trabalho INT REFERENCES trabalho(Id_Trabalho)
);


INSERT INTO aluno(Nome, Ra, Idade) 
VALUES 
	('William C.', '123456789', 24),
	('Fabiano G.', '987654321', 20),
	('Giovanni H.', '12349876', 18);

INSERT INTO trabalho(Materia) 
VALUES 
	('Português'),
	('Matemática'),
	('História');

INSERT INTO nota(Nota, Id_Aluno, Id_Trabalho)
VALUES 
	(9.4, 1, 1),
	(8.3, 1, 2),
	(7.6, 1, 3);

SELECT * FROM aluno;
SELECT * FROM trabalho;
SELECT * FROM nota;