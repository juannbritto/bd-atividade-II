CREATE DATABASE RH;

USE RH;

CREATE TABLE Departamentos(
	DepartamentoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeDepartamento VARCHAR(50)
);

CREATE TABLE Funcionarios(
	FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Cargo VARCHAR(50),
    Salario DOUBLE,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

INSERT INTO Departamentos(NomeDepartamento)
VALUES('Administração'),
('Recursos Humanos'),
('Financeiro'),
('Pessoal'),
('Diretoria');

INSERT INTO Funcionarios(Nome, Cargo, Salario)
VALUES('Joao', 'Diretor', '4000'),
('Pedro', 'Gerente', '3000'),
('Fernanda', 'Surpevisor', '2000'),
('Ricardo', 'Funcionario', '1300'),
('Julia', 'Funcionario', '1300');

SELECT * FROM Departamentos;

SELECT * FROM Funcionarios;

