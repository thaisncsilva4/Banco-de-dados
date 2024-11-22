-- Apagar o banco de dados
drop database dbLoterica;
-- Criar o banco de dados
create database dbLoterica;
-- Acessar o banco de dados
use dbLoterica;
-- Criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal(9,2)
);

-- Inserindo registros nas tabelas
insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values (1, 'Paulo Antunes da silva', 'paulo.asilva@hotmail.com', '94521-7852', '253.254.258.77', 20, 1600);

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario) 
	values(2, 'Regina Miranda', 'regina.miranda@gmail.com', '97852-4178', '852.365.274.88', 25, 1500);

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values (3, 'Mario de Andrade', 'marcio.andrade@yahoo.com', '97852-5214', '369.417.587.88', 35, 2000);

insert into tbFuncionarios(nome, email)
	values('Ronaldo Rodrigues', 'ronaldo.rodrigues@gmail.com');

insert into tbFuncionarios(codFunc, email, cpf)
	values(5,'Fernando.ccunha@gmail.com', '524.652.574.88');

-- Visualizando as estruturas das tabelas
desc tbFuncionarios;

-- Visualizando os registros da tabela
select * from tbFuncionarios;

--Visualizando os registros da tabela com alguns campos

select nome, cpf from tbFuncionarios; 

--Visualizando o nome do campo para visualizar / alias

select codFunc as 'Código', nome as 'Nome', email as 'E-mail', telefone as 'Celular' from tbFuncionarios;

-- Alterando os dados da tabela

update tbFuncionarios set nome = 'Fernando cunha', email = 'fernando.ccunha@gmail.com', telefone = '98425-5717' WHERE codFunc = 5;

update tbFuncionarios set codFunc = 4, telefone = '99521-7858', cpf = '852.569.248.92' WHERE nome = 'Ronaldo Rodrigues';

update tbFuncionarios set idade = 18, salario = 3500 WHERE codFunc = 4;

update tbFuncionarios set idade = 52, salario = 500 WHERE codFunc = 5;

-- Alterando os registros das tabelas

-- Excluindo os registros das tabelas

delete from tbFuncionarios Where codFunc = 5;

--Tabela Virtual

select nome, idade, 'Legais' as 'Observação' from tbFuncionarios;
select 'Legal' as 'Observação', nome, idade, email from tbFuncionarios;
select nome, 'Legal' as 'Observação', idade, email from tbFuncionarios;

-- Aumento de Salario

select nome, salario * 1.10 as 'Aumento de salario' from tbFuncionarios;

-- Desconto de Salario

select nome, salario * 0.75 as 'Desconto de salario' from tbFuncionarios;

-- Código do funcionário multiplcado pelo PI - 3.14

select codFunc * 3.14 as 'Pi' from tbFuncionarios;
-- Acessar o banco de dados
use dbLoterica;
-- Criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal(9,2)
);

-- Inserindo registros nas tabelas
insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values (1, 'Paulo Antunes da silva', 'paulo.asilva@hotmail.com', '94521-7852', '253.254.258.77', 20, 1600);

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario) 
	values(2, 'Regina Miranda', 'regina.miranda@gmail.com', '97852-4178', '852.365.274.88', 25, 1500);

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values (3, 'Mario de Andrade', 'marcio.andrade@yahoo.com', '97852-5214', '369.417.587.88', 35, 2000);

insert into tbFuncionarios(nome, email)
	values('Ronaldo Rodrigues', 'ronaldo.rodrigues@gmail.com');

insert into tbFuncionarios(codFunc, email, cpf)
	values(5,'fernando.ccunha@gmail.com', '524.652.574.88');

insert into tbFuncionarios(codFunc, email, cpf)
	values(5,'fernando.ccunha@gmail.com', '524.652.574.88');

insert into tbFuncionarios(codFunc, email, cpf)
	values(5,'fernando.ccunha@gmail.com', '524.652.574.88');


-- Visualizando as estruturas das tabelas
desc tbFuncionarios;

-- Visualizando os registros da tabela
select * from tbFuncionarios;

--Visualizando os registros da tabela com alguns campos

select nome, cpf from tbFuncionarios; 

--Visualizando o nome do campo para visualizar / alias

select codFunc as 'Código', nome as 'Nome', email as 'E-mail', telefone as 'Celular' from tbFuncionarios;

-- Alterando os dados da tabela

update tbFuncionarios set nome = 'Fernando cunha', email = 'fernando.ccunha@gmail.com', telefone = '98425-5717' WHERE codFunc = 5;

update tbFuncionarios set codFunc = 4, telefone = '99521-7858', cpf = '852.569.248.92' WHERE nome = 'Ronaldo Rodrigues';

update tbFuncionarios set idade = 18, salario = 3500 WHERE codFunc = 4;

update tbFuncionarios set idade = 52, salario = 500 WHERE codFunc = 5;

-- Alterando os registros das tabelas

-- Excluindo os registros das tabelas

delete from tbFuncionarios Where codFunc = 5;

--Tabela Virtual

select nome, idade, 'Legais' as 'Observação' from tbFuncionarios;
select 'Legal' as 'Observação', nome, idade, email from tbFuncionarios;
select nome, 'Legal' as 'Observação', idade, email from tbFuncionarios;

-- Aumento de Salario

select nome, salario * 1.10 as 'Aumento de salario' from tbFuncionarios;

-- Desconto de Salario

select nome, salario * 0.75 as 'Desconto de salario' from tbFuncionarios;

-- Código do funcionário multiplcado pelo PI - 3.14

select codFunc * 3.14 as 'Pi' from tbFuncionarios;

select distinct email from tbFuncionarios;

select distinct nome, email from tbFuncionarios;