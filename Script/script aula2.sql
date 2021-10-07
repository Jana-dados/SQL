create database aula2;
use aula2;

create table Cliente (
id_cli integer primary key,
nome_cli varchar (200) not null,
cpf_cli varchar (15),
data_nasc_cli date,
sexo_cli varchar (30),
email_cli varchar (200)
);

Create table Endereco (
id_end integer primary key,
rua_end varchar (100),
numero_end integer,
bairro_end varchar (100)
);

Create table Cidade (
id_cid integer primary key,
nome_cid varchar (100),
data_criacao_cid date
);

create table Estado (
id_est integer primary key,
nome_est varchar (100),
sigla_est varchar (10),
regiao_est varchar (100)
);

create table Pais (
id_pai integer primary key,
nome_pai varchar (100),
continente_pai varchar (100)
);