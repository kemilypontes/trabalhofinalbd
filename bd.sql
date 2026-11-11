CREATE TABLE Produto 
(
 id INT PRIMARY KEY, 
 preco DECIMAL(10, 2) NOT NULL,  
 nome VARCHAR(100) NOT NULL,  
 categoria TEXT NOT NULL,  
 descricao TEXT NOT NULL,  
 quantidade INT NOT NULL  
); 

CREATE TABLE Compra 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 idEndereço INT,  
 forma_pagamento VARCHAR NOT NULL,  
 data DATE NOT NULL,  
 valor_total FLOAT NOT NULL,  
); 

CREATE TABLE Cliente 
( 
 id INT PRIMARY KEY,  
 nome VARCHAR NOT NULL,  
 cpf CHAR NOT NULL,  
 celular VARCHAR NOT NULL,  
 senha VARCHAR NOT NULL,  
 email VARCHAR NOT NULL,  
 UNIQUE (cpf)
); 

CREATE TABLE Endereço 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 cidade VARCHAR NOT NULL,  
 bairro VARCHAR NOT NULL,  
 rua VARCHAR NOT NULL,  
 numero VARCHAR NOT NULL,  
 cep VARCHAR NOT NULL,  
 estado CHAR NOT NULL,  
 complemento VARCHAR NOT NULL,  
); 

CREATE TABLE possui 
( 
 id INT PRIMARY KEY,  
 Id INT PRIMARY KEY,  
 valor-unitario FLOAT NOT NULL,  
 quantidade INT,  
); 

ALTER TABLE Compra ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Compra ADD FOREIGN KEY(idEndereço) REFERENCES Endereço (idEndereço)
ALTER TABLE Endereço ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE possui ADD FOREIGN KEY(id) REFERENCES Compra (id)
ALTER TABLE possui ADD FOREIGN KEY(Id) REFERENCES Produto (Id)
