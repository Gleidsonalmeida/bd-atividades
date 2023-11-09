CREATE DATABASE Pedidos;
USE Pedidos;

CREATE TABLE TPedidos (
  Numero INT AUTO_INCREMENT PRIMARY KEY,
  status VARCHAR(255) NOT NULL,
  DatadeEntrega DATE
);

INSERT INTO TPedidos (status, DatadeEntrega) VALUES ('Entregue', 2022-06-09);
INSERT INTO TPedidos (status, DatadeEntrega) VALUES ('Entregue', '2021-07-13');
INSERT INTO TPedidos (status, DatadeEntrega) VALUES ('Pendente', '2023-08-08');

CREATE VIEW PedidosPendentes AS
SELECT Numero, status
FROM TPedidos
WHERE status = 'Pendente' AND DataEntrega = '2023-08-08';

SELECT * FROM PedidosPendentes;