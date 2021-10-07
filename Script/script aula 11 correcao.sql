Create database aula11;
use aula11;

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

#Selecione o nome e data de nascimento dos clientes nascidos entre 1980 e 2000 ordenados pelo nome;
select nome_cli, data_nasc_cli from cliente 
where (data_nasc_cli >= '1980-01-01') and (data_nasc_cli <= '2000-12-31') order by nome_cli;

#Selecione os clientes com idade entre 10 e 50 e que possuem nome não nulo ordenados pelo nome de forma decrescente;
select * from cliente where (idade_cli between 10 and 50) and (nome_cli is not null) order by nome_cli desc;

#Selecione e mostre a maior idade entre os clientes armazenados;
select max(idade_cli) from cliente;

#Selecione e mostre a menor renda entre os clientes armazenados;
select min(renda_cli) from cliente;

#Selecione e mostre a soma das idades dos clientes armazenados;
select sum(idade_cli) from cliente;

#Selecione e mostre a renda média dos clientes armazenados;
select avg(renda_cli) from cliente;
