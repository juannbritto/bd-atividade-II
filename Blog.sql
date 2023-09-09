CREATE DATABASE sistema_de_blog;

USE sistema_de_blog;

CREATE TABLE Artigos(
	ArtigoID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(50),
    Conteudo VARCHAR(255),
    DataPublicacao DATE
);

CREATE TABLE Comentarios(
	ComentarioID INT PRIMARY KEY AUTO_INCREMENT,
    ArtigoID INT,
    FOREIGN KEY(ArtigoID) REFERENCES Artigos(ArtigoID),
    Autor VARCHAR(30),
    Texto VARCHAR(255),
    DataComentario Date
);

INSERT INTO Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Guia de Paladino', 'Ragnarok', '2020-11-04'),
('Guia de Sicario', 'Ragnarok', '2021-09-03'),
('Guia de Sacerdote', 'Ragnarok', '2023-02-23'),
('Guia de Mago', 'Ragnarok', '2023-01-20'),
('Guia de Mercador', 'Ragnarok', '2022-03-25');

INSERT INTO Comentarios(Autor, Texto, DataComentario)
VALUES('Joao', 'Legal', '20200913'),
('Pedro', 'Obrigado', '20230314'),
('Fernanda', 'Ruim', '20220430'),
('Paulo', 'Massa', '20210505'),
('Julia', 'Gostei', '20230405');

SELECT * FROM Artigos;

SELECT * FROM Comentarios;