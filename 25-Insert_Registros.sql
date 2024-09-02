SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-07-01', '2024-07-10', 500.00);

/Inserindo registos nas tabelas/
INSERT INTO Marcas (nome) VALUES 
('Toyota'), 
('Honda'), 
('Ford');

INSERT INTO Modelos (nome, id_marca) VALUES
('Corolla', 1),
('Civic', 2),
('Focus', 3);

INSERT INTO Veiculos (placa, ano, cor, id_modelo) VALUES 
('ABC1234', 2020, 'Preto', 1), 
('XVZ5678', 2021, 'Branco', 2), 
('LMN9101', 2019, 'Azul', 3);

INSERT INTO Clientes (nome, cpf, telefone, endereco) VALUES
('Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'Rua A, 123'), 
('Maria Oliveira', '234.587.890-11', '(21) 98765-4321', 'Rua B, 456'), 
('João Santos', '345.678.901-22', '(31) 98765-4321', 'Rua C, 789');
SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-08-01', '2024-08-07', 350.00),
(2, 2, '2024-08-05', NULL, NULL),
(3, 3, '2024-08-10', '2024-08-15', 400.00);
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO Pagamentos (id_contrato, data_pagamento, valor, metodo) VALUES
(1, '2024-08-01', 350.00, 'Cartão de Crédito'), 
(3, '2024-08-10', 400.00, 'Dinheiro');
