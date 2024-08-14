/Trabalhando com Transação e integridade de Dados/
/Iniciando a transação/
start transaction;
-- inserindo cliente a)
insert into bd_caso_estudo_vendas.tb_cli(cli_cod,cli_nome,cli_cpf,cli_end_rua,cli_end_num,cli_end_bairro,cli_end_cep)
values(103,'Cliente Dois','12112112199','Rua Teste','199','Bairro Teste','1229222');
-- inserindo compra b)
insert into bd_caso_estudo_vendas.tb_compra(compra_cod,compra_cli_cod,compra_func_cod,compra_qtd_cod)
values (23,3,6,8);
-- inserindo Produto c)
insert into bd_caso_estudo_vendas.tb_prod(prod_cod,prod_forn_cod,prod_desc,prod_vlr)
values (32,1,'Quatro',20);
insert into bd_caso_estudo_vendas.tb_prod(prod_cod,prod_forn_cod,prod_desc,prod_vlr)
values (27,1,'Quatro',30);
-- N° da Venda inserida d)
-- Atualização da tabela produtos da venda, inserindo produtos associados a venda e)
insert into  bd_caso_estudo_vendas.tb_prod_comp(prod_cod,compra_cod)
values(30,4);
insert into  bd_caso_estudo_vendas.tb_prod_comp(prod_cod,compra_cod)
values(46,6);
commit;

set foreign_key_checks=0;
