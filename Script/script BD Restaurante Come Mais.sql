create database aula4;
use aula4;

create table Caixa (
id_cai integer primary key,
saldo_inicial_cai float,
total_recebimentos_cai float,
saldo_final_cai float,
data_cai date
);

create table Mesa (
id_mes integer primary key,
status_mes varchar (30),
numero_mes integer
);

create table Funcionario (
id_fun integer primary key,
nome_fun varchar (100),
funcao_fun varchar (50)
);

create table Fornecedor (
id_for integer primary key,
nome_for varchar (200),
cnpj_for varchar (50)
);

create table Compra (
id_com integer primary key,
valor_com float,
id_for_fk integer,
foreign key (id_for_fk) references Fornecedor (id_for),
id_fun_fk integer,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

create table Pedido (
id_ped integer primary key,
hora_ped time,
valor_ped float,
id_mes_fk integer,
foreign key (id_mes_fk) references Mesa (id_mes),
id_fun_fk integer,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

create table Produto (
id_pro integer primary key,
nome_pro varchar (100),
estoque_pro integer,
valor_pro float
);

create table Pedido_Produto (
id_ppr integer,
id_ped_fk integer,
foreign key (id_ped_fk) references Pedido (id_ped),
id_pro_fk integer,
foreign key (id_pro_fk) references Produto (id_pro)
);

create table Cliente (
id_cli integer primary key,
nome_cli varchar (100),
cpf_cli varchar (15)
);

create table Compra_Produto (
id_cpr integer primary key,
id_pro_fk integer,
foreign key (id_pro_fk) references Produto (id_pro),
id_com_fk integer,
foreign key (id_com_fk) references Compra (id_com)
);

create table Venda (
id_ven integer primary key,
valor_ven float,
id_ped_fk integer,
foreign key (id_ped_fk) references Pedido (id_ped),
id_fun_fk integer,
foreign key (id_fun_fk) references Funcionario (id_fun),
id_cli_fk integer,
foreign key (id_cli_fk) references Cliente (id_cli)
);

create table Recebimento (
id_rec integer primary key,
valor_rec float,
id_cai_fk integer,
foreign key (id_cai_fk) references Caixa (id_cai),
id_ven_fk integer,
foreign key (id_ven_fk) references Venda (id_ven)
);

create table Refeicao (
id_ref integer primary key,
kilo_ref float,
id_ven_fk integer,
foreign key (id_ven_fk) references Venda (id_ven)
);

create table Pedido_Refeicao (
id_pre integer primary key,
id_ped_fk integer,
foreign key (id_ped_fk) references Pedido (id_ped),
id_ref_fk integer,
foreign key (id_ref_fk) references Refeicao (id_ref)
);