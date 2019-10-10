DROP DATABASE empresa;
CREATE DATABASE empresa;

USE empresa;

CREATE TABLE diretor(
	Id_Diretor INT IDENTITY PRIMARY KEY NOT NULL,
	Setor VARCHAR(50) NOT NULL,
	Salario FLOAT NOT NULL
);

CREATE TABLE departamento(
	Id_Departamento INT IDENTITY PRIMARY KEY NOT NULL,
	Qtd_Funcionario FLOAT NOT NULL,
	Id_Diretor INT REFERENCES diretor(Id_Diretor)
);


INSERT INTO diretor(Setor, Salario) 
VALUES 
	('Tecnologia', 10560.60),
	('Comercial', 29456.32),
	('ADM', 12454.00);

INSERT INTO departamento(Qtd_Funcionario, Id_Diretor) 
VALUES 
	(2, 1),
	(4, 2),
	(5, 3);

SELECT * FROM diretor;
SELECT * FROM departamento;