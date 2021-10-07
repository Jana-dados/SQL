Create database aula10;
use aula10;

create table Cliente (
id_cli integer primary key,
nome_cli varchar (200) not null,
idade_cli int,
renda_cli float,
data_nasc_cli date);

alter table cliente change data_nasc_cli data_nasc_cli varchar (20);

insert into cliente values (1, 'José da Silva', 33, 1500.50, '1987-01-30');
insert into cliente values (2, 'Ana Maria', 31, 2500.00, '1990-02-20');
insert into cliente values (3, 'Gustavo Silva', 20, 5000.00, '2000-01-31');
insert into cliente values (4, 'Marcos Perereira', 27, 1020.00, '1993-06-21');
insert into cliente values (5, 'Thiago Souza', 33, 5000.00, '1987-06-30');

select * from cliente;
desc cliente;

#Exclua os clientes com renda entre 500 e 2000 e nascidos em 1987.
delete from cliente where (renda_cli between 200 and 2000) and (data_nasc_cli like '1987%'); 

#Exclua os clientes com sobrenome Pereira ou Souza e que possuam idade entre 20 e 30 anos;
delete from cliente where ((nome_cli like '%pereira%') OR (nome_cli like '%souza%')) AND (idade_cli between 20 and 30);

#Exclua os clientes com idade entre 10 e 60 anos e com renda entre 1000 e 10000 e nascidos em 2000;
delete from cliente where (idade_cli between 10 and 60) AND (renda_cli between 1000 and 10000) AND (data_nasc_cli like '2000%');