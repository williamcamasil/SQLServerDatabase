CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento(
	Id_Departamento INT IDENTITY PRIMARY KEY NOT NULL,
	Id_Localizacao INT REFERENCES localizacao(Id_Localizacao) NOT NULL,
	Id_Empregado INT REFERENCES empregado(Id_Empregado) NOT NULL
);

CREATE TABLE localizacao(
	Id_Localizacao INT IDENTITY PRIMARY KEY NOT NULL,
	Endereco VARCHAR(80) NOT NULL
);

CREATE TABLE projeto(
	Id_Projeto INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(40) NOT NULL,
	Descricao VARCHAR(120),
	Orcamento FLOAT
);

CREATE TABLE empregado(
	Id_Empregado INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(40) NOT NULL,
	Rg VARCHAR(30),
	Endereco VARCHAR(80) NOT NULL
);

CREATE TABLE dependente(
	Id_Dependente INT IDENTITY PRIMARY KEY NOT NULL,
	Id_Empregado INT REFERENCES empregado(Id_Empregado) NOT NULL
);


INSERT INTO departamento(Id_Localizacao, Id_Empregado) 
VALUES 
	(1, 1),
	(2,  2),
	(3, 3);

INSERT INTO localizacao(Endereco) 
VALUES 
	('Rua A'),
	('Rua B'),
	('Rua C');

INSERT INTO projeto(Nome, Descricao, Orcamento) 
VALUES 
	('William', 'Esse é um teste ABC', 500),
	('João', 'Esse é um teste 123C', 560),
	('Luiza', 'Esse é um teste 43238', 230);

INSERT INTO empregado(Nome, Rg, Endereco) 
VALUES 
	('William', '232324232332', 'Paulo 2°'),
	('João', '657787645', 'Av. Martes'),
	('Luiza', '9045243432AA', 'Rua Matriz');

INSERT INTO dependente(Id_Empregado) 
VALUES 
	(1),
	(2),
	(3);


SELECT * FROM departamento;
SELECT * FROM localizacao;
SELECT * FROM projeto;
SELECT * FROM empregado;
SELECT * FROM dependente;