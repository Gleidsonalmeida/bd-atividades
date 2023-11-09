CREATE DATABASE Funcionarios;
USE Funcionarios;

CREATE TABLE Tfuncionarios(
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Cargo VARCHAR(50) NOT NULL,
Departamento VARCHAR(50) NOT NULL
);

INSERT INTO Tfuncionarios (Nome, Cargo, Departamento) VALUES ('Diogo de Jesus', 'Dev Full Stack', 'TI');
INSERT INTO Tfuncionarios (Nome, Cargo, Departamento) VALUES ('Matheus Fagundes', 'Dev Back End', 'TI');
INSERT INTO Tfuncionarios (Nome, Cargo, Departamento) VALUES ('Gleidson Almeida', 'Dev Front End', 'TI');

CREATE VIEW FuncionariosDepartamento AS
SELECT Nome, Cargo
FROM TFuncionarios
WHERE Departamento = 'TI';

SELECT * FROM FuncionariosDepartamento;