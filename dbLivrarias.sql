drop database dbLivrarias;
create database dbLivrarias;
use dbLivrarias;
create table tbAlunos(
raAluno int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
create table tbLivros(
isbn int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
aluno_raAluno int,
colaborador_id int
);
create table tbColaboradores(
id_colaborador int,
cpf varchar(45),
email varchar(45),
cargo varchar(45)
);
create table tbEmprestimos(
idEmprestimos int,
data_emprestimo date,
data_devolucao date,
livro_lsbn varchar(45),
cpf varchar(45),
colaborador_id int
);

show tables;

desc tbAlunos;
desc tbLivros;
desc tbColaboradores;
desc tbEmprestimos;
