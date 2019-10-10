DROP DATABASE mercado;
CREATE DATABASE mercado;

USE mercado;

CREATE TABLE cliente(
	Id_Cliente INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Forma_Pagamento VARCHAR(15) NOT NULL
);

CREATE TABLE produto(
	Id_Produto INT IDENTITY PRIMARY KEY NOT NULL,
	Preco FLOAT NOT NULL,
	Qtd_Produto INT NOT NULL,
	Id_Cliente INT REFERENCES cliente(Id_Cliente)
);


INSERT INTO cliente(Nome, Forma_Pagamento) 
VALUES 
	('Isabel L.', 'Avista'),
	('Leonardo C.', 'Parcelado'),
	('Layana R.', 'Avista');

INSERT INTO produto(Preco, Qtd_Produto, Id_Cliente) 
VALUES 
	(25.50, 5, 1),
	(13.56, 2, 2),
	(9.34, 3, 3);

SELECT * FROM cliente;
SELECT * FROM produto;