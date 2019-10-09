CREATE DATABASE turma;
USE turma;

CREATE TABLE aluno(
	Id_Aluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Id_Turma INT REFERENCES turma(Id_Turma)
);

CREATE TABLE turma(
	Id_Turma INT IDENTITY PRIMARY KEY NOT NULL,
	Qtd_Aluno INT
);


INSERT INTO aluno(Nome, Id_Turma) 
VALUES 
	('William C.', 1),
	('Paulo W.',  2),
	('Gabriela G.', 3);

INSERT INTO turma(Qtd_Aluno) 
VALUES 
	(45),
	(30),
	(50);


SELECT * FROM aluno;
SELECT * FROM turma;