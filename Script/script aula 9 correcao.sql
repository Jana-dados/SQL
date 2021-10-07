Create database aula9;
use aula9;

create table Cliente (
id_cli integer primary key,
nome_cli varchar (200) not null,
idade_cli int,
renda_cli float,
data_nasc_cli date);

insert into cliente values (1, 'José da Silva', 33, 1500.50, '1987-01-30');
insert into cliente values (2, 'Ana Maria', 31, 2500.00, '1990-02-20');
insert into cliente values (3, 'Gustavo Silva', 20, 5000.00, '2000-01-31');
insert into cliente values (4, 'Marcos Perereira', 27, 1020.00, '1993-06-21');
insert into cliente values (5, 'Thiago Souza', 33, 5000.00, '1987-06-30');

UPDATE Cliente SET nome_cli = 'Gustavo H. Silva' WHERE (id_cli = 3);
UPDATE Cliente SET renda_cli = renda_cli + 1000 WHERE (idade_cli > 30);
UPDATE Cliente SET renda_cli = renda_cli * 1.1;

select * from cliente;

#Crie um update que mude o nome do cliente nº 5 para ‘Lucas Matos’;
update cliente set nome_cli = 'Lucas Matos' where (id_cli = 5);

#Crie um update que aumentar a renda em 20% dos clientes nascidos antes do ano 2000;
update cliente set renda_cli = renda_cli * 1.2 where (data_nasc_cli < '2000-01-01'); 

#Crie um update para diminuir a renda em 27% dos clientes com renda maior ou igual a 5000 reais;
update cliente set renda_cli = renda_cli - (renda_cli * 0.27) where (renda_cli >= 5000);

#Crie um update para alterar a idade do cliente nº 2 para 40 anos.
update cliente set idade_cli = 40 where (id_cli = 2);

#Altere para 50 a idade dos clientes com ID entre 2 e 5 ou nascidos entre 1970 e 1980;
update cliente set idade_cli = 50 where ((id_cli >= 2) and (id_cli <= 5)) OR 
((data_nasc_cli >= '1970-01-01') and (data_nasc_cli <= '1980-01-01'));

#Diminua 500 reais na renda dos clientes nascidos entre 1980 e 2000 que 
#tenha renda superior a 1000 reais e idade menos que 50;
update cliente set renda_cli = renda_cli - 500 where ((data_nasc_cli >= '1980-01-01') and (data_nasc_cli <= '2000-01-01'))
and (renda_cli > 1000) and (idade_cli < 50);

#Aumente 1000 reais na renda dos clientes com idade entre 10 e 20 anos ou 40 e 60 anos.
update cliente set renda_cli = renda_cli + 1000 where ((idade_cli >= 10) and (idade_cli <= 20)) OR 
((idade_cli >= 40) and (idade_cli <= 60));

select * from cliente;
