CREATE DATABASE ExclusaoFunc;
USE ExclusaoFunc;

CREATE TABLE Funcionarios (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Cargo VARCHAR(255) NOT NULL
);

CREATE TABLE FuncionariosDemitidos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Cargo VARCHAR(255) NOT NULL,
  DatadeDem DATE
);

DELIMITER //
CREATE TRIGGER RegistroDem
AFTER DELETE ON Funcionarios
FOR EACH ROW
BEGIN
  INSERT INTO FuncionariosDemitidos (Nome, Cargo, DatadeDem)
  VALUES (OLD.Nome, OLD.Cargo, CURDATE());
END;
//
DELIMITER ;


INSERT INTO Funcionarios (Nome, Cargo) VALUES ('Diogo', 'Programador');

DELETE FROM Funcionarios WHERE Id = 2;

SELECT * FROM FuncionariosDemitidos;