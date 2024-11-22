-- Apagar o banco de dados
drop database dbZoologico;

-- 1 Criar o banco de dados
create database dbZoologico;

-- Acessar o banco de dados
use dbZoologico;

-- 2 Criar as tabelas
create table tbAnimais(
codFunc int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

desc tbAnimais;

insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(1, 'cachorro', 'Djudi', 3, 300.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(2, 'cachorro', 'Sula', 5, 300.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(3, 'cachorro', 'Sarina', 7, 300.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(4, 'gato', 'Pipa', 2, 500.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(5, 'gato', 'Sarangue', 2, 500.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(6, 'gato', 'Clarences', 1, 500.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(7, 'coruja', 'Agnes', 0, 700.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(8, 'coruja', 'Arabela', 1, 700.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(9, 'sapo', 'Quash', 1, 100.00);
insert into tbAnimais(codFunc, tipo, nome, idade, valor)
    values(10, 'peixe', 'Fish', 0, 100.00);

-- 3 Mostrar a tabela completa

select * from tbAnimais;

-- 4 Mostrar apenas as colunas TIPO e NOME da tabela

select tipo, nome from tbAnimais;

-- 5 Mostrar apenas as colunas TIPO, NOME e IDADE da tabela

select tipo, nome, idade from tbAnimais;

-- 6 Mostrar apenas as colunas TIPO e NOME da tabela animais e apresente com o alias

select tipo as 'Tipo de animal', nome as 'Nome do animal' from tbAnimais;

-- 7 Mostrar apenas as colunas TIPO, NOME e IDADE da tabela e apresente com o alias

select tipo as 'Tipo de animal', nome as 'Nome do animal', idade as 'Tempo de vida' from tbAnimais;
 
-- 8 Mostrar dados da tabela animais

select 'Animal Doméstico' as 'Procedência', tipo, nome, idade as 'Tempo de vida' from tbAnimais;


-- 9 Mostrar dados da tabela animais

select tipo, nome, idade, valor as 'Valor Original', valor * 1.10 as 'Valor da venda' from tbAnimais;

-- 10 

--update tbAnimais set tipo = 'cachorro', valor = 300 WHERE codFunc = 1;
--update tbAnimais set tipo = 'gato', valor = 500 WHERE codFunc = 2;
--update tbAnimais set tipo = 'coruja', valor = 700 WHERE codFunc = 3;
--update tbAnimais set tipo = 'sapo', valor = 100 WHERE codFunc = 4;
--update tbAnimais set tipo = 'peixe', valor = 100 WHERE codFunc = 5;
--select 'cachorro' as 'Tipo', '300.00' as 'Valor Original', '330.00' as 'Valor ' from tbAnimais;

select distinct tipo, valor as 'Valor Original', valor * 1.10 as 'Valor da venda' from tbAnimais;



