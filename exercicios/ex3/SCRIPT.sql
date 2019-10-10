DROP DATABASE editora;
CREATE DATABASE editora;

USE editora;

CREATE TABLE autor(
	Id_Autor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE livro(
	Id_Livro INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Genero VARCHAR(50) NOT NULL,
	Id_Autor INT REFERENCES autor(Id_Autor)
);


INSERT INTO autor(Nome) 
VALUES 
	('Tony Robbins'),
	('Machado de Assis'),
	('José de Alencar');

INSERT INTO livro(Nome, Genero, Id_Autor) 
VALUES 
	('Poder sem limites', 'Auto ajuda', 1),
	('Dom casmurro', 'Literatura Realista', 2),
	('Til', 'Romance', 3);

SELECT * FROM autor;
SELECT * FROM livro;