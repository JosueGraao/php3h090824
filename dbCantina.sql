-- apagando banco de dados

drop database dbcantina;

--criando banco de dados

create database dbcantina;

--acessando banco de dados

use dbcantina;

-- criando tabelas

create table tbFuncionarios(
-- 11 caracteres é o padrão em variáveis integer. Pode ser definido um número menor, mas nunca um maior.
codFunc int not null auto_increment,
nome varchar(100) not null,
-- unique define que o conteúdo deste campo não pode se repetir no banco
email varchar(100) unique,
cpf char(14) not null unique,
-- default define um preenchimento automático caso o campo não seja preenchido
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2),
nascimento date,
telCelular char(10),
primary key(codFunc));