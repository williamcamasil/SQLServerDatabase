DROP DATABASE clube;
CREATE DATABASE clube;

USE clube;

CREATE TABLE equipe(
	Id_Equipe INT IDENTITY PRIMARY KEY NOT NULL,
	Nome_Time VARCHAR(50) NOT NULL
);

CREATE TABLE jogadores(
	Id_Jogador INT IDENTITY PRIMARY KEY NOT NULL,
	Jogo VARCHAR(50) NOT NULL,
	Id_Equipe INT REFERENCES equipe(Id_Equipe)
);


INSERT INTO equipe(Nome_Time) 
VALUES 
	('Corinthians'),
	('Vitória'),
	('Brasil');

INSERT INTO jogadores(Jogo, Id_Equipe) 
VALUES 
	('COR VS PAL', 1),
	('BRA VS SEN', 2),
	('VIC VS SAN', 3);

SELECT * FROM equipe;
SELECT * FROM jogadores;