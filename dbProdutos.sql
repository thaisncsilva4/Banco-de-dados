drop database dbProdutos;
 
create database dbProdutos;
 
use dbprodutos;

CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR DECIMAL(10,2));

desc produtos;
 
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00);
INSERT INTO PRODUTOS (CODIGO,NOME,TIPO,QUANTIDADE,VALOR) 
    VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00);
 
select * from produtos;

-- Aumenta 12% 

update produtos set valor = valor * 1.12 where nome like 'F%';

-- Aumente 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600

update produtos set quantidade = quantidade + 50 where valor > 400 and valor < 600;

-- Aplicar desconto 50% em todos os produtos que as unidades de estoque sejam maiores que 300

update produtos set valor = valor * 0.50 where quantidade > 300;

-- Exiba codigo = 4

select * from produtos WHERE codigo = 4;

-- Exibir produtos que não tenham a letra Y

select * from produtos where tipo not like '%y%';

-- Exibir produtos que se iniciem com nome 'MO' e tenham como tipo de letras 'MA'

select * from produtos where nome like 'MO%' and tipo like '%MA%';


-- select nome from produtos WHERE QUANTIDADE >= 250 and valor <= 200;
-- select nome, tipo from produtos WHERE valor <= 250 or quantidade = 100;

-- Alterando o valor

-- update produtos set valor = valor * 1.10 WHERE tipo 'INFORMATICA';
-- select * from produtos WHERE tipo 'INFORMATICA';
-- update produtos set quantidade = quantidade + 10 where tipo = 'eletronicos' and valor <= 400;
-- select * from produtos where tipo = 'eletronicos' and >= 400;
-- select * from produtos where tipo in('informatica', 'eletronicos');
-- select * from produtos where tipo not in ('informatica', 'eletronicos');
-- select * from produtos where valor between 300 and 600;
-- select * from produtos where valor not between 300 and 600;
-- select * from produtos where nome like 'm%' and tipo '%s';


