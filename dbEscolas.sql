drop database dbEscolas;
create database dbEscolas;
use	dbEscolas;
create table tbCursos(
idCurso int,
nome varchar(45),
professor_idProfessor int
);
create table tbCursoAluno(
curso_idCursos int,
aluno_idAluno int
);
create table tbAlunos(
idAluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
create table tbProfessor(
idProfessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

show tables;

desc tbCursos;
desc tbCursoAluno;
desc tbAlunos;
desc tbProfessor;
