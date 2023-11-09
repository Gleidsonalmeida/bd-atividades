CREATE DATABASE ValidarTwo;
USE ValidarTwo;

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
  IF NEW.DataValidade < CURDATE() THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data de validade do produto expirada';
  END IF;
END;
//
DELIMITER ;

INSERT INTO Produtos (Nome, DatadeValidade) VALUES ('Filé Mignon', '2023-12-30');

INSERT INTO Produtos (Nome, DatadeValidade) VALUES ('Alcátra', '2022-12-29');

SELECT Nome, DatadeValidade FROM Produtos;