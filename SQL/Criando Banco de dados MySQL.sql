/*Criação do banco de dados CREATE DATABASE*/
CREATE DATABASE curso_sql;

/*Esse comando seleciona o banco de dados*/
USE curso_sql;

/*Comando para criação da tabela CREATE TABLE*/
CREATE TABLE funcionarios 
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    PRIMARY KEY (id)
);

CREATE TABLE veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    PRIMARY KEY (id),
    CONSTRAINT fk_vaiculos_funcionarios FOREIGN KEY (funcionario_id) REFERENCES funcionarios (id)
);

CREATE TABLE salarios
(
faixa varchar(45) not null,
inicio double not null,
fim double null,
PRIMARY KEY (faixa)
);

/*Alterando um campo na tabela com comando ALTER TABLE*/
ALTER TABLE funcionarios CHANGE COLUMN nome nome_func Varchar(50);
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome Varchar(50) not null;

/*Apagando uma tabela*/
DROP TABLE salarios;

/*Criando indices INDEX*/
CREATE INDEX departamento ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome);



