CREATE DATABASE LaTech;
USE Latech;

-- Criar as tabelas de acordo com a modelagem
-- criar a tabela Empresa
CREATE TABLE Empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT, 
nomeEmpresa VARCHAR(45),
CNPJ CHAR(14),
telefone VARCHAR(20),
email VARCHAR(200),
senha VARCHAR(100)
);

-- Criar a tabela Gerente
CREATE TABLE Gerente(
idGerente INT PRIMARY KEY AUTO_INCREMENT,
nomeGerente VARCHAR(100),
CPF CHAR(11)
);

-- Criar a tabela Industria 
CREATE TABLE Industria(
idIndustria INT PRIMARY KEY AUTO_INCREMENT,
nomeIndustria VARCHAR(45),
CEP CHAR(11),
telefone VARCHAR(20)
);

-- Criar a tabela Armazem 
CREATE TABLE Armazem(
idArmazem INT PRIMARY KEY AUTO_INCREMENT,
setor VARCHAR(40)
);

-- Criar a tabela Produto
CREATE TABLE Produto(
idProduto INT PRIMARY KEY AUTO_INCREMENT,
nomeProduto VARCHAR(20),
tipoProduto VARCHAR(20),
temperatura FLOAT,
umidade FLOAT,
validade DATE
);

-- Criar a tabela Sensor 
CREATE TABLE Sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nomeSensor VARCHAR(20),
situacaoSensor VARCHAR(30),
retornoSensor FLOAT
);

-- Inserção de dados na tabela Empresa
INSERT INTO Empresa VALUES
	(null , 'QueijosLTDA' , '12345678912345' , '(11)91234-1234' , 'queijos@hotmail.com' , 'queijos123'),
    (null ,'LeitesLTDA' , '54321987654321' , '(11)92234-1334' , 'leite@hotmail.com' , 'leites123'),
    (null ,'QueijosEleites' , '12345678912345' , '(11)9844-1134' , 'queijoseleites@hotmail.com' , 'queijoseleitos123');
    
SELECT * FROM Empresa;
    
-- Inserção de dados na tabela Gerente
INSERT INTO Gerente VALUES
	(NULL, 'CauÃ£ Gustavo', '76580235071'),
    (NULL, 'Kauan Oliveira', '99830687023'),
    (NULL, 'Kelvin Santos', '73306537055');
    
SELECT * FROM Gerente;

-- Inserção de dados na tabela Industria
INSERT INTO Industria VALUES
	(NULL , 'QueijosIndustria' , '01234-567' , '(11)93234-8771'),
    (NULL ,'LeiteIndustria' , '12345-678' , '(11)93213-3231'),
    (NULL ,'QueijosEleitesIndustria' , '12345-878' , '(11)98765-4321)');
    
SELECT * FROM Industria;

-- Inserção de dados na tabela Armazem
INSERT INTO Armazem (setor) VALUES 
	('1' ),
	('2'),
	('3'),
    ('A'),
    ('B'),
    ('C'),
    ('100'),
    ('200'),
    ('300');
    
    SELECT * FROM Armazem;
    
    -- Inserções na tabela Produto
    
INSERT INTO Produto (nomeProduto , tipoProduto) Values 
	('Queijo' , 'Gorgonzola' ),
    ('Queijo' , 'Parmesao' ),
    ('Queijo ' , 'Provolone' ),
    ('Leite' , 'Integral' ),
    ('Leite' , 'Desnatado' );
    
SELECT * FROM Produto;

-- Inserção de dados na tabela Sensor
DESC Sensor;

INSERT INTO Sensor (nomeSensor , situacaoSensor ) VALUES 
	('LM35' , 'Ligado' ),
	('LM35' , 'Desligado' ),
    ('LM35' , 'Ligado' ),
    ('LM35' , 'Desligado' ),
    ('LM35' , 'Ligado' );
    
SELECT * FROM Sensor;
        
    