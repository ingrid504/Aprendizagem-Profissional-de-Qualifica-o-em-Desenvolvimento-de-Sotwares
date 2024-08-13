-- Definir o delimitador de comandos para $$, para que o MYSQL saiba onde começa e termina o gatilho
DELIMITER $$
-- Criar o gatilho com o nome trg_atualiza_qtd_compra
CREATE TRIGGER trg_atualiza_qtd_compra
-- Especificar que o gatilho deve ser acionado após a inserção de um novo registro na tabela tb_prod_comp
AFTER INSERT ON tb_prod_comp
-- Especificar que o gatilho deve ser acionado para cada linha inserida
FOR EACH ROW
-- Iniciar o bloco de código do gatilho 
BEGIN
   -- Atualizar o campo compra_qtd_cod da tabela tb_compra
   UPDATE tb_compra
   -- Aumentar o valor do campo compra_qtd_ em 1 
   SET compra_qtd_cod = compra_qtd_cod + 1
   -- Especificar a condição para atualizar apenas a linha correspondente ao código de compra inserido
   WHERE compra_cod = NEW.compra_cod;
-- Terminar o bloco de código do gatilho
END$$	
-- Restaurar o delimitador de comandos para o padrão 
DELIMITER ;   
