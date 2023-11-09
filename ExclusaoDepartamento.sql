CREATE DATABASE Exclusao;
USE Exclusao;


CREATE TABLE Funcionarios (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL
);


CREATE TABLE Dependentes (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  FuncionarioID INT
);


INSERT INTO Funcionarios (Nome) VALUES ('Diogo');
INSERT INTO Dependentes (Nome, FuncionarioID) VALUES ('Gleidson', 1);


DELIMITER //
CREATE TRIGGER ExcluirDependentes
AFTER DELETE ON Funcionarios
FOR EACH ROW
BEGIN
  DELETE FROM Dependentes WHERE FuncionarioID = OLD.ID;
END;
//
DELIMITER ;

DELETE FROM Funcionarios WHERE Id = 1;

SELECT * FROM Funcionarios;
SELECT * FROM Dependentes;