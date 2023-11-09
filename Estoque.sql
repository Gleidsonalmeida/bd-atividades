CREATE DATABASE Estoque;
USE Estoque1;

CREATE TABLE Tabela(
ID INT AUTO_INCREMENT PRIMARY KEY,
NomeProduct VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL
);


INSERT INTO Tabela(NomeProduct, Quantidade) VALUES ('Pc', 6);
INSERT INTO Tabela(NomeProduct, Quantidade) VALUES ('Celular', 5);
INSERT INTO Tabela(NomeProduct, Quantidade) VALUES ('Carregador', 30);


CREATE VIEW EstoqueInsuficiente AS 
SELECT NomeProduct, Quantidade
FROM Tabela
WHERE Quantidade< 5;

SELECT * FROM EstoqueInsuficiente;