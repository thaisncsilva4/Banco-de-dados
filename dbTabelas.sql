drop database dbTabelas;
create database dbTabelas;
use dbTabelas;
create table tbBairros(
id int,
nome varchar(100),
cidade_id int
);
create table tbEnderecos(
id bigint(20),
bairro_id int,
tipo_local varchar(15),
logradouro varchar(128),
numero int,
complemento varchar(100)
);
create table tbPontos(
id bigint(20),
endereco_id bigint(20)
);
create table tbCidades(
id int,
nome varchar(38),
estado_id int
);
create table tbEstados(
id int,
sigla char(2)
);
create table tbServicos(
id bigint(20),
endereco_id bigint (20),
solicitante_id bigint(20)
);
create table tbSolicitantes(
id bigint(20),
endereco_jd bigint(20)
);

show tables;

desc tbBairros;
desc tbEnderecos;
desc tbEnderecos;
desc tbPontos;
desc tbCidades;
desc tbEstados;
desc tbServicos;
desc tbSolicitantes;