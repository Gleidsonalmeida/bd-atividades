CREATE DATABASE Validar;
USE Validar;


CREATE TABLE Produtos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  DatadeValidade DATE
);

DELIMITER //
CREATE TRIGGER ValidarDatadeValidade
BEFORE INSERT ON Produtos
FOR EACH ROW
BEGIN
  IF NEW.DatadeValidade < CURDATE() THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data de validade do produto expirada';
  END IF;
END;
//
DELIMITER ;


INSERT INTO Produtos (Nome, DatadeValidade) VALUES ('Filé mignon', '2023-12-30');
INSERT INTO Produtos (Nome, DatadeValidade) VALUES ('Alcátra', '2023-12-30');

SELECT Nome, DatadeValidade FROM Produtos;