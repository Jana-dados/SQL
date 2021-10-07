create table Fornecedor (
ID_Forn integer primary key,
CNPJ_Forn varchar (20),
Nome_forn varchar (100),
Endereco_Forn varchar (100),
Telefone_Forn varchar(20),
Email_Forn varchar (50)
);

create table Fucionario (
ID_Func integer primary key,
CPF_Func varchar(20),
Nome_Func varchar (100),
Endereco_Func varchar (100),
Data_Entrada_Func date,
Data_Saida_Func date,
Salario_Func float
);

create table despesa(
ID_Desp integer primary key,
Data_Desp date,
Desc_Desp varchar (100),
Valor_Desp float
);

create table Compras(
ID_Comp integer primary key,
ID_Forn_Fk integer,
	foreign key (ID_Forn_Fk) references Fornecedor (ID_Forn),
ID_Func_Fk integer,
	foreign key (ID_Func_Fk) references Funcionario (ID_Func),
Data_Comp date,
Numero_Nota_Comp varchar(30),
Valor_Comp Float
);

create table Comp_Desp(
ID_Comp_Desp integer primary key,
ID_Desp_Fk integer,
	foreign key (ID_Desp_Fk) references Despesa (ID_Desp),
ID_Comp_FK integer,
	foreign key (ID_Comp_Fk) references Compras (ID_Comp)
);

create table Caixa(
ID_Caix integer primary key,
Data_Caix date,
Total_Entrada_Caix float,
Total_Saida_Caix float,
Valor_Caix float
);

create table Pagamento(
ID_Pag integer primary key,
ID_Caix_Fk integer,
	foreign key (ID_Caix_Fk) references Caixa (ID_Caix),
Data_Pag integer,
Valor_Pag float,
Numero_Nota_Pag varchar (20),
Descricao_Pag varchar (50)
);

create table Estoque (
ID_Esto integer primary Key,
Produto_Esto varchar (100),
Quantidade_Esto integer
);

create table Comp_Esto (
ID_Comp_Esto integer primary key,
ID_Comp_Fk integer,
	foreign key (ID_Comp_Fk) references Compras (ID_Comp),
ID_Esto_Fk integer,
	foreign key (ID_Esto_Fk) references Estoque (ID_Esto)
);

create table Cliente (
ID_Cli integer primary key,
CPF_Cli varchar (30),
Nome_Cli varchar(50),
Endereco_Cli varchar (100),
Telefone_Cli varchar (20),
Email_Cli varchar (50)
);

create Table Entrega (
ID_Entr integer primary key,
ID_Cli_Fk integer,
	foreign key (ID_Cli_Fk) references Cliente (ID_Cli),
Data_Entr date,
Endereco_Entr varchar(100)
);

create table Venda (
ID_Vend integer primary key,
ID_Cli_FK integer,
	foreign key (ID_Cli_Fk) references Cliente (ID_Cli),
ID_Func_Fk integer,
	foreign key (ID_Func_Fk) references Funcionario (ID_Func),
Data_Vend date,
Valor_Vend float,
Produto_Vend varchar (100)
);

create table Recebimento (
ID_Rece integer primary key,
ID_Caix_Fk integer,
	foreign key (ID_Caix_Fk) references Caixa (ID_Caix),
ID_Vend_Fk integer,
	foreign key (ID_Vend_Fk) references Venda (ID_Vend),
Data_Rece date,
Valor_Rece float
);

create table Produto (
ID_Prod integer primary key,
ID_Esto_Fk integer,
	foreign key (ID_Esto_Fk) references Estoque (ID_Esto),
Descricao_Prod varchar(100),
Caracteristicas_Prod varchar (100),
Valor_Prod float
);

create table Prod_Vend (
ID_Prod_Vend integer primary key,
ID_Prod_Fk integer,
	foreign key (ID_Prod_Fk) references Produto (ID_Prod),
ID_Vend_Fk integer,
	foreign key (ID_Vend_Fk) references Venda (ID_Vend)
);
