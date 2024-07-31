 /*Criando novo usuario no servidor*/
create user 'lara.rodrigues'@'localhost' identified by '123456';
create user 'izabella.oliveira'@'localhost' identified by '123456';
create user 'luane.gabrielly'@'localhost' identified by '123456';
create user 'danielgomes'@'localhost' identified by '123456';
create user 'tiago.lime'@'localhost' identified by '123456';

/*Aplicando permissão de consulta de todos os arquivo banco no servidor*/
grant select 
on .
to danielgomeslocalhost
/*Aplicando permissão de banco inserção em todas as tabelas do banco*/
grant insert 
on bd_caso_estudos_vendas.*
to estagiario@localhost;
 /*Aplicando permissão global de todos a arquivos/banco no servidor*/
grant select 
on .
to danielgomeslocalhost
/*Aplicando permissões de banco de inserção e atualização em  tabela definida*/
grant insert 
on bd_caso_estudos_vendas.*
to danielgomeslocalhost;
grant insert 
on bd_caso_estudos_vendas.tb_prod
to danielgomeslocalhost;
grant 
    	 on select (cli_cod,cli_nome,cli_cpf),
   update(cli_end_cep)
on bd_caso_estudos_vendas.tb_cli
to danielgomeslocalhost;
/**/
grant insert,update,delete
on `bd_caso_estudos_vendas.tb_func`
to root@localhost;

revoke insert,update
on `bd_caso_estudos_vendas.tb_func`
from root@localhost;

grant delete
on `bd_caso_estudos_vendas.tb_func`
to root@localhost;

revoke select 
on `bd_caso_estudos_vendas.tb_func`
from root@localhost;

grant insert 
on `bd_caso_estudos_vendas.tb_func`
to root@localhost;



