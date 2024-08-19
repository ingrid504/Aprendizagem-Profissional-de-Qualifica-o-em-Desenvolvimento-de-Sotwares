/*Criação das Tabelas*/
CREATE TABLE `bd_exercicio`.`tb_funcionario`(
    `func_codigo` INT NOT NULL PRIMARY KEY,
	`func_nome` VARCHAR(60) NULL,
	`func_cpf` VARCHAR(13) NULL,
	`forn_end` VARCHAR(90) NULL,
    `forn_salario` NUMERIC,
    `ger_depto_cod` INT,
    `trab_depto_cod` INT,
     `proj_cod` INT 
);     
  CREATE TABLE `bd_exercicio`. `tb_departamento`(
     `depto_codigo` INT NOT NULL PRIMARY KEY,  
	 `depto_nome` VARCHAR(60) NULL,  
     `local_cod`  INT  
  );  
   CREATE TABLE `bd_exercicio`.`tb_projeto`(
   `proj_codigo` INT NOT NULL PRIMARY KEY,
   `proj_numero`INT, 
   `depto_cod` INT,
   `local_cod` INT
);
 CREATE TABLE `bd_exercicio`.`tb_local`(
 `local_codigo` INT NOT NULL PRIMARY KEY,
 `local_desc` VARCHAR(60) NULL
 );
