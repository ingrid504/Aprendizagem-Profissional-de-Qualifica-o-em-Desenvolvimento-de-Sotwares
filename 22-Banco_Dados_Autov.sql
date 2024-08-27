/*Criando Banco de Dados - Arquivo*/
create database AutoVialocadora;
/*Criando Tabelas*/
CREATE TABLE  Marcas (
     id INT AUTO_INCREMENT PRIMARY KEY,
     nome varchar(50) NOT NULL UNIQUE
);
CREATE TABLE modelos (
     id INT AUTO_INCREMENT PRIMARY KEY,
     nome varchar(50) NOT NULL,
     id_marca INT,
     FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);     
CREATE TABLE Veiculos (
     id INT AUTO_INCREMENT PRIMARY KEY,
     placa varchar(10) NOT NULL UNIQUE,
     ano INT NOT NULL,
     cor VARCHAR (20),  
     id_modelo INT,
     status ENUM ('Disponível', 'Locado', 'Em Manutenção') DEFAULT 'Disponível',
     FOREIGN KEY (id_modelo) REFERENCES Modelos(id) 
);     
CREATE TABLE Clientes (
	 id INT AUTO_INCREMENT PRIMARY KEY,
     nome VARCHAR(100) NOT NULL,
     cpf VARCHAR(14) NOT NULL UNIQUE,
     telefone VARCHAR(15),
     endereco VARCHAR(255)
);
CREATE TABLE Contratos (
    id_cliente INT,
    id_veiculo Int,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
	FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id)
);
CREATE TABLE Pagamentos (
	  id_ INT AUTO_INCREMENT PRIMARY KEY,
      id_contrato INT,
      data_pagamento DATE NOT NULL,
      valor DECIMAL(10, 2) NOT NULL,
      FOREIGN KEY (id_contrato) REFERENCES Contratos(id)
);    
