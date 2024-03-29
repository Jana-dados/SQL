#Script BD_AgenciaBancaria - Versão 5.0
create database BD_Banco_v5;
use BD_Banco_v5;

create table Banco (
cod_ban int primary key not null auto_increment,
nome_ban varchar (200) not null
);

insert into Banco values (null, 'Caixa Econômica Federal');
insert into Banco values (null, 'Banco do Brasil');

create table Agencia (
cod_ag int primary key not null auto_increment,
numero_ag varchar (100) not null,
nome_ag varchar (100),
telefone_ag varchar (200),
cod_ban_fk int not null,
foreign key (cod_ban_fk) references Banco (cod_ban)
);

insert into Agencia values (null, '0951-2', 'Centro', '69 3421 1111', 2);
insert into Agencia values (null, '4402-1', 'Centro', '69 3422 2299', 2);
insert into Agencia values (null, '1824', 'Centro', '69 3423 1925', 1);
insert into Agencia values (null, '1920', 'Nova Brasilia', '69 3421 1122', 1);


create table Cliente (
cod_cli int primary key not null auto_increment,
nome_cli varchar (200) not null,
cpf_cli varchar (50) not null,
rg_cli varchar (100) not null,
sexo_cli varchar (1),
dataNasc_cli date not null,
renda_cli float not null,
endereco_cli varchar (300) not null,
email_cli varchar (300) not null,
telefone_cli varchar (200) not null
);

insert into Cliente values (null, 'Maria da Silva', '123.123.123-23', '1113322 sesdec/RO', 'F', '1990-10-10', 2500.00, 'Rua das Flores', 'maria.silva@hotmail.com', '3423 3333'); 
insert into Cliente values (null, 'Roberto Carlos', '789.789.789-89', '889977 sesdec/RO', 'M', '1975-01-10', 4990.00, 'Av. Costa', 'roberto.carlos@gmail.com', '8444 8899'); 
insert into Cliente values (null, 'Jane Pereira', '444.666.444-44', '005548 sesdec/RO', 'F', '1989-06-07', 1850.50, 'Rua Presidente', 'jane.pereira@hotmail.com', '9977 8899'); 
insert into Cliente values (null, 'Clodoaldo Bragança', '654.456.654-65', '654658 sesdec/RO', 'F', '1991-10-12', 9850.50, 'Av. Brasil', 'clodoaldo.bragança@gmail.com', '3423 5500'); 
insert into Cliente values (null, 'Livia de Souza', '333.444.666-98', '0033333 sesdec/RO', 'F', '1982-01-30', 1100.00, 'Av. Ji-Parana', 'livia.souza@hotmail.com', '8498 9898'); 
insert into Cliente values (null, 'Joab da Silva', '159.425.456-77', '001215 sesdec/RO', 'M', '2000-10-01', 4990.00, 'Av. Ji-Parana', 'joab.silva@hotmail.com', '69 8411 2321');
insert into cliente values (null, 'Rodrigo Hilbert', '123.445.888-99', '5592 sesdec', 'M', '1970-09-30', 2500.00, 'Rua Dr. Luiz', 'rodrigo.hilbert@yahoo.com.br', '9944 4545');
insert into cliente values (null, 'João Eujácio Teixeira Júnior', '999.445.789-99', '978999992 sesdec', 'M', '1989-01-10', 6000.00, 'Rua Silva Abreu', 'joao.eujacio@ifro.edu.br', '3421 1159');
insert into cliente values (null, 'Everton Feline', '123.123.888-99', '12392 sesdec', 'M', '1987-12-10', 11500.00, 'Rua Alencar Vieira', 'everton.feline@gmail.com','69 84228811');
insert into cliente values (null, 'Igor de Souza Santos', '123.345.848-99', '43299892 sesdec', 'M', '1990-12-30', 1000.00, 'Av. Brasil', 'igor.souza@gmail.com', '69 9977 7777');
insert into cliente values (null, 'Francisco Bezerra', '888.123.111-11', '213156 sesdec', 'M', '1965-01-30', 3500.00, 'Rua Fim do Mundo', 'francisco.bezerra@ifro.edu.br', '69 3423 5502');


create table Conta_Corrente (
cod_cc int primary key not null auto_increment,
numero_cc int not null,
dataAbertura_cc date not null,
saldo_cc float not null,
valorLimite_cc float not null,
saldoComLimite_cc float not null,
cod_ag_fk int not null,
cod_cli_fk int not null,
foreign key (cod_ag_fk) references Agencia (cod_ag),
foreign key (cod_cli_fk) references Cliente (cod_cli)
);


insert into Conta_Corrente values (null, 40650, '2009-01-01', 1232.00, 100.00, 1332.00, 1, 1);
insert into Conta_Corrente values (null, 41897, '2009-01-30', 4564.00, 200.00, 4764.00, 1, 2);
insert into Conta_Corrente values (null, 42487, '2010-06-06', 2211.00, 200.00, 2411.00, 1, 3);
insert into Conta_Corrente values (null, 43456, '2011-04-21', 15.00, 100.00, 115.00, 1, 4);
insert into Conta_Corrente values (null, 44787, '2012-12-31', 0.00, 100.00, 100.00, 1, 5);
insert into Conta_Corrente values (null, 45650, '2013-01-01', 545.00, 100.00, 645.00, 1, 6);
insert into Conta_Corrente values (null, 46897, '2014-01-30', 12345.00, 300.00, 12645.00, 1, 7);
insert into Conta_Corrente values (null, 47487, '2014-06-06', 112.00, 200.00, 312.00, 1, 8);
insert into Conta_Corrente values (null, 48456, '2015-04-21', 10.00, 100.00, 110.00, 1, 9);
insert into Conta_Corrente values (null, 280541, '2016-12-31', 12345.00, 100.00, 12445.00, 3, 10);
insert into Conta_Corrente values (null, 280191, '2016-12-31', 555465.00, 100.00, 555565.00, 3, 11);

create table Deposito (
cod_dep int primary key not null auto_increment,
valor_dep float not null,
data_dep date not null,
tipo_dep varchar (100),
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

insert into Deposito values (null, 500.00, '2011-03-21', 'Dinheiro', 1);
insert into Deposito values (null, 50.00, '2011-10-09', 'Dinheiro', 4);
insert into Deposito values (null, 1500.00, '2011-12-20', 'Cheque', 3);
insert into Deposito values (null, 125.00, '2011-06-11', 'Dinheiro', 5);
insert into Deposito values (null, 490.00, '2012-12-02', 'Dinheiro', 2);
insert into Deposito values (null, 1010.00, '2012-12-11', 'Cheque', 6);
insert into Deposito values (null, 120.00, '2016-01-30', 'Dinheiro', 7);
insert into Deposito values (null, 550.00, '2016-06-30', 'Dinheiro', 9);
insert into Deposito values (null, 80.00, '2016-10-23', 'Dinheiro', 10);
insert into Deposito values (null, 1000.00, '2016-11-08', 'Cheque', 10);


create table Saque (
cod_saq int primary key not null auto_increment,
valor_saq float not null,
data_saq date not null,
local_saq varchar (100) not null,
hora_saq time,