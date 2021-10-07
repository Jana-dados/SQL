create table Fornecedor(
id_for integer primary key,
nome_for varchar (100),
cnpj_for varchar (20)
);

create table Setor(
id_set integer primary key,
nome_set varchar (100)
);

create table Despesa(
id_des integer primary key,
nome_des varchar (100),
valor_des float
);

create table Caixa(
id_cai integer primary key,
saldo_inicial_cai float,
total_recebimentos_cai float,
total_retiradas_cai float,
saldo_final_cai float
);

create table Cliente(
id_cli integer primary key,
nome_cli varchar (100),
endereco_cli varchar (200),
cpf_cli varchar (15)
);

create table Pagamento(
id_pag integer primary key,
tipo_pag varchar (50),
data_pag date,
id_cai_fk integer,
	foreign key (id_cai_fk) references Caixa (id_cai),
id_des_fk integer,
	foreign key (id_des_fk) references Despesa (id_des)
);

create table Funcionario(
id_fun integer primary key,
nome_fun varchar (100),
funcao_fun varchar (30),
id_set_fk integer,
	foreign key (id_set_fk) references Setor (id_set)
);

create table Venda (
id_ven integer primary key,
valor_ven float,
data_ven date,
id_cli_fk integer,
	foreign key (id_cli_fk) references Cliente (id_cli),
id_fun_fk integer,
	foreign key (id_fun_fk) references Funcionario (id_fun)
);

create table Recebimento(
id_rec integer primary key,
tipo_rec varchar (50),
data_rec date,
id_cai_fk integer,
	foreign key (id_cai_fk) references Caixa (id_cai),
id_ven_fk integer,
	foreign key (id_ven_fk) references Venda (id_ven)
);

create table Entrega(
id_ent integer primary key,
data_ent date,
endereco_alternativo_ent varchar (200),
hora_ent time,
id_ven_fk integer,
	foreign key (id_ven_fk) references Venda (id_ven)
);

create table Produto(
id_pro integer primary key,
nome_pro varchar (100),
valor_pro float,
estoque_pro integer
);

create table Produto_Venda(
id_pve integer,
id_pro_fk integer,
	foreign key (id_pro_fk) references Produto (id_pro),
id_ven_fk integer,
	foreign key (id_ven_fk) references Venda (id_ven)
);

create table Compra(
id_com integer primary key,
valor_com float,
data_com date,
id_des_fk integer,
	foreign key (id_des_fk) references Despesa (id_des),
id_for_fk integer,
	foreign key (id_for_fk) references Fornecedor(id_for),
id_fun_fk integer,
	foreign key (id_fun_fk) references Funcionario (id_fun)
);

create table Produto_Compra(
id_pco integer primary key,
id_com_fk integer,
	foreign key (id_com_fk) references Compra (id_com),
id_pro_fk integer,
	foreign key (id_pro_fk) references Produto (id_pro)
);