drop database dbPortaria;

create database dbPortaria;

use  dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc)
);


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key (codUsu),
foreign key (codFunc) references tbFuncionarios(codFunc)
);


create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telcel char(10),
primary key(codCli)
);


create table tbFornecedores(
codFor int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codFor)
);


create table tbProdutos(
codPro int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codFor int not null, 
primary key(codPro),
foreign key(codFor) references tbFornecedores(codFor)
);


create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horavend time,
codUsu int not null,
codPro int not null,
codCli int not null,
primary key(codvend),
foreign key(codUsu) references tbUsuarios(codUsu),
foreign key(codPro) references tbProdutos(codPro),
foreign key(codCli) references tbClientes(codCli)
);


insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
    values('Matheus Melo', '52.741.528.7', '425.785.985.77', 'M', 2500.45);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
    values('Thaís Nogueira', '00.852.758.5', '852.751.789.20', 'F', 1500.50);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
    values('Alex Silva', '15.523.485.6', '120.258.310.55', 'M', 1890.00);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
    values('Bruno Oliveira', '85.320.486.2', '418.207.790.22', 'F', 1890.00);

insert into tbClientes(nome, email, telcel)
    values('Joana Antunes', 'joana.antunes@hotmail.com', '95248-7859');
insert into tbClientes(nome, email, telcel)
    values('Katia Assad', 'katia.assad@hotmail.com', '98526-9628');
insert into tbClientes(nome, email, telcel)
    values('Mauricio de Souza', 'mauricio.souza@hotmail.com', '93265-2020');

insert into tbFornecedores(nome, email, telefone, cnpj)
    values('Armarinho Fernandes', 'armarinho.fer@hotmail.com', '95881-9520', '48.978.228/0001-10');
insert into tbFornecedores(nome, email, telefone, cnpj)
    values('Fabio souza', 'fabio_souza@gmail.com', '93081-1020', '10.988.758/0002-15');
insert into tbFornecedores(nome, email, telefone, cnpj)
    values('Bruna silva', 'bruna.silva@hotmail.com', '95881-4117', '58.978.418/0003-98');
insert into tbFornecedores(nome, email, telefone, cnpj)
    values('Julio Oliveira', 'julio.oli@yahoo.com', '96264-9850', '56.108.978/0004-41');

insert into tbUsuarios(nome, senha, codFunc)
    values ('Alex.silva', '123456', 3);
insert into tbUsuarios(nome, senha, codFunc)
    values ('Bruno.oliveira', '123456', 4);
insert into tbUsuarios(nome, senha, codFunc)
    values ('Matheus.melo', '123456', 1);

insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codFor)
    values ('Canetas', '524516', '2025/12/10', '2024/11/18', '11:30:00',25,36,1);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codFor)
   values ('Bolsas', '541416', '2025/12/21', '2024/11/21', '13:40:00',50,40,1);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codFor)
    values ('Carteiras', '541420', '2025/12/20', '2024/11/20', '13:00:00',70,30,1);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codFor)
    values ('Perfume', '550420', '2025/12/19', '2024/11/19', '14:00:00',20,94.99,1);


insert into tbVendas(valor, quantidade, dataVend, horavend, codUsu, codPro, codCli)
    values(36.00, 10, '2024/11/21','08:30:00', 1, 1, 3);
insert into tbVendas(valor, quantidade, dataVend, horavend, codUsu, codPro, codCli)
    values(40, 5, '2024/11/20','09:30:00', 1, 2, 3);
insert into tbVendas(valor, quantidade, dataVend, horavend, codUsu, codPro, codCli)
    values(94.99, 2, '2024/11/21','12:30:00', 1, 1, 3);
insert into tbVendas(valor, quantidade, dataVend, horavend, codUsu, codPro, codCli)
    values(30, 10, '2024/11/21','12:00:00', 1, 1, 3);
insert into tbVendas(valor, quantidade, dataVend, horavend, codUsu, codPro, codCli)
    values(30, 7, '2024/11/21','16:40:00', 1, 1, 3);


desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;

 select func.nome as 'Nome do Funcionário', usu.nome as 'Nome do Usuário' 
 from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc 
 where func.codFunc = 1;


select func.nome as 'Nome do Funcionário', usu.nome as 'Nome do Usuário' 
from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc 
where func.nome like '%n%';

select func.nome as 'Funcionarios',cli.nome as 'Clientes',prod.descricao as 'Produtos',vend.quantidade as 'Quantidade',vend.valor as 'Valor'
from tbVendas as vend 
inner join tbFuncionarios as func on func.codFunc = vend.codUsu
inner join tbClientes as cli on vend.codCli = cli.codCli
inner join tbProdutos as prod on vend.codPro = prod.codPro;

-- Nome do fornecedor, lote do produto , validade do produto, 
-- email do fornecedor, quantidade de produto, 
-- cnpj do fornecedor, preço do produto.
-- A pergunta é para a tabela produtos.


-- Primeiro preencher os campos, depois diminuir o nome da tabela, fazer a ligação das chaves primárias
select forn.nome as 'Nome', prod.lote as 'Lote', prod.validade as 'Validade', forn.email 'E-mail', prod.quantidade as 'Quantidade', forn.cnpj as 'CNPJ', prod.preco as 'Preco'
from tbProdutos as prod
inner join tbFornecedores as forn on prod.codFor = forn.codFor;















-- Chave primaria é uma forma de organizar uma tabela 
-- Chave Estrangeira 
-- Chave única são para numeros que não se repetem