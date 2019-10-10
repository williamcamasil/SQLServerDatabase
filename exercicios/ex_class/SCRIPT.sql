DROP DATABASE loja;
CREATE DATABASE loja;

USE loja;
--USE classe;

CREATE TABLE marca(
	Id_Marca INT IDENTITY PRIMARY KEY NOT NULL,
	Nome_Marca VARCHAR(40) NOT NULL
);

CREATE TABLE roupa(
	Id_Roupa INT IDENTITY PRIMARY KEY NOT NULL,
	Cor VARCHAR(15) NOT NULL,
	Tamanho CHAR NOT NULL,
	Tipo VARCHAR(15) NOT NULL, 
	Id_Marca INT FOREIGN KEY REFERENCES marca(Id_Marca) NOT NULL
);

CREATE TABLE estoque(
	Id_Estoque INT IDENTITY PRIMARY KEY NOT NULL,
	Qtd_Roupa INT NOT NULL,
	Id_Marca INT FOREIGN KEY REFERENCES marca(Id_Marca) NOT NULL
);

INSERT INTO marca (Nome_Marca) VALUES ('Nike'), ('Khelf'), ('Adidas');
INSERT INTO roupa (Cor, Tamanho, Tipo, Id_Marca) 
	VALUES 
		('Azul', 'P', 'Camiseta', 1), 
		('Branca', 'M', 'Calça', 1),
		('Branca', 'M', 'Camiseta', 1),
		('Branca', 'M', 'Camiseta', 1),
		('Branca', 'M', 'Camiseta', 1),
		('Verde', 'G', 'Camiseta', 1);
INSERT INTO estoque (Qtd_Roupa, Id_Marca) VALUES (10, 1), (5, 2), (20, 3);

SELECT * FROM marca;
SELECT * FROM roupa;
SELECT * FROM estoque;

UPDATE roupa SET 
	Id_Marca = 2
WHERE Id_Roupa = 1;

DELETE FROM roupa 
WHERE Id_Roupa=(SELECT MAX(Id_Roupa) FROM roupa);

SELECT tipo FROM roupa
WHERE tipo = 'Camiseta';

SELECT Nome_Marca FROM marca;

SELECT Cor FROM roupa;

SELECT 
	roupa.tipo,
	marca.Nome_Marca
FROM marca
INNER JOIN roupa ON roupa.Id_Roupa = marca.Id_Marca
INNER JOIN estoque ON estoque.Id_Estoque = marca.Id_Marca;

SELECT 
	roupa.tipo,
	roupa.Cor
FROM marca
INNER JOIN roupa ON roupa.Id_Roupa = marca.Id_Marca
INNER JOIN estoque ON estoque.Id_Estoque = marca.Id_Marca;

SELECT 
	roupa.tipo,
	roupa.Tamanho
FROM marca
INNER JOIN roupa ON roupa.Id_Roupa = marca.Id_Marca
INNER JOIN estoque ON estoque.Id_Estoque = marca.Id_Marca;