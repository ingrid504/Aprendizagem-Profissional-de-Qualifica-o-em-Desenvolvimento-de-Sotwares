/*Inner Join*/
select *
from `bd_caso_estudo_vendas`.`tb_func`
inner join `bd_caso_estudo_vendas`.`tb_depto`
     on depto_cod = func_depto;
     
 select cli_cod, cli_nome,func_nome
 from `bd_caso_estudo_vendas`.`tb_compra`
 inner join `bd_caso_estudo_vendas`.`tb_func`
     on func_cod = compra_func_cod
 inner join `bd_caso_estudo_vendas`.`tb_cli`
     on cli_cod = compra_qtd_cod;
 /*Clausulas, operadores e funções*/
 select * from `bd_caso_estudo_vendas`.`tb_func`
 where func_nome like '%Pedro%';
 
 select compra_cod
 from `bd_caso_estudo_vendas`.`tb_prod_comp`
 group by compra_cod;
 
 select * 
 from `bd_caso_estudo_vendas`.`tb_prod`
 where prod_vlr between 10 and 25; 
 
 select sum(prod_vlr)
 from `bd_caso_estudo_vendas`.`tb_prod`;
 
 select avg(prod_vlr)
 from `bd_caso_estudo_vendas`.`tb_prod`;
 
select min(prod_vlr)
from `bd_caso_estudo_vendas`.`tb_prod`;
 
 select max(prod_vlr)
 from `bd_caso_estudo_vendas`.`tb_prod`;
 
 select count(*)from `bd_caso_estudo_vendas`.`tb_prod`;
 
