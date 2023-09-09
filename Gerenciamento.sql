CREATE DATABASE sistema_de_gerenciamento;

use sistema_de_gerenciamento;

CREATE TABLE Clientes(
	ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(23) NOT NULL
    
);

CREATE TABLE Pedidos(
	PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID),
    DataPedido VARCHAR(10) NOT NULL,
    ValorTotal DOUBLE NOT NULL
);

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES('Bruna Oliveira', 'bruna@gmail.com', '71 9 9999-9999'),
('Joao Vitor', 'joao@gmail.com', '71 9 9999-9999'),
('Paulo Pedro', 'paulo@gmail.com', '71 9 9999-9999'),
('Pedro Oliveira', 'pedro@gmail.com', '71 9 9999-9999'),
('Ricardo Ferreira', 'ricardo@gmail.com', '71 9 9999-9999');

INSERT INTO Pedidos(DataPedido, ValorTotal)
VALUES('02/02/2023', '800'),
('03/03/2023', '900'),
('04/04/2023', '1000'),
('05/05/2023', '1100'),
('06/06/2023', '1200');

SELECT * FROM Clientes;

SELECT * FROM Pedidos;