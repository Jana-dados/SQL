create database  aula4;
use aula4;

create table Procedimento (
id_pro integer primary key,
nome_pro varchar (100),
materiais_pro varchar (100),
valor_pro float
);

create table Dentista (
id_den integer primary key,
nome_den varchar (100),
cpf_den varchar (20),
especialidade_den varchar (100)
);

create table Paciente (
id_pac integer primary key,
nome_pac varchar (100),
cpf_pac varchar (20),
telefone_pac varchar (20),
email_pac varchar (50)
);

create table Agenda (
id_age integer primary key,
data_age date,
hora_age time,
tipo_age varchar (50),
id_den_fk integer,
foreign key (id_den_fk) references Dentista (id_den),
id_pac_fk integer,
foreign key (id_pac_fk) references Paciente (id_pac)
);

create table Consulta (
id_con integer primary key,
data_con date,
valor_con float,
id_den_fk integer,
foreign key (id_den_fk) references Dentista (id_den),
id_pac_fk integer,
foreign key (id_pac_fk) references Paciente (id_pac)
);

create table Recebimento (
id_rec integer primary key,
data_rec date,
tipo_rec varchar (100),
valor_rec float,
id_con_fk integer,
foreign key (id_con_fk) references Consulta (id_con)
);

create table Consulta_Procedimento (
id_cpr integer primary key,
id_pro_fk integer,
foreign key (id_pro_fk) references Procedimento (id_pro),
id_con_fk integer,
foreign key (id_con_fk) references Consulta (id_con)
);