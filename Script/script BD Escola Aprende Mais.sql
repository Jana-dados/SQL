CREATE DATABASE AULA2;
USE AULA2;

CREATE TABLE Curso(
id_cur integer primary key,
nome_cur varchar (100),
objetivo_cur varchar (100),
perfil_egresso_cur varchar (100)
);

CREATE TABLE Aluno(
id_alu integer primary key,
nome_alu varchar (100),
cpf_alu varchar (15),
endereco_alu varchar (100)
);

CREATE TABLE Escola(
id_esc integer primary key,
nome_esc varchar (100),
endereco_esc varchar (100)
);

CREATE TABLE Turma(
id_tur integer primary key,
nome_tur varchar (100)
);

CREATE TABLE Disciplina(
id_dis integer primary key,
nome_dis varchar (100),
objetivo_dis varchar (100),
conteudos_dis varchar (100),
bibliografia_dis varchar (100),
id_cur_fk integer,
foreign key (id_cur_fk) references Curso (id_cur)
);

CREATE TABLE Funcionario(
id_fun integer primary key,
nome_fun varchar (100),
cpf_fun varchar(15),
funcao_fun varchar (100),
id_esc_fk integer,
foreign key (id_esc_fk) references Escola (id_esc)
);

CREATE TABLE Diario (
id_dia integer primary key,
id_tur_fk integer,
foreign key (id_tur_fk) references Turma (id_tur)
);

CREATE TABLE Aula (
id_aul integer primary key,
conteudo_aul varchar (100),
data_aul date,
id_dia_fk integer,
foreign key (id_dia_fk) references Diario (id_dia)
);

CREATE TABLE Presenca (
id_pre integer primary key,
ausente_pre varchar (50),
presente_pre varchar (50),
id_aul_fk integer,
foreign key (id_aul_fk) references Aula (id_aul),
id_alu_fk integer,
foreign key (id_alu_fk) references Aluno (id_alu)
);

CREATE TABLE Nota(
id_not integer primary key,
etapa1_not float,
etapa2_not float,
id_dia_fk integer,
foreign key (id_dia_fk) references Diario (id_dia),
id_alu_fk integer,
foreign key (id_alu_fk) references Aluno (id_alu)
);

CREATE TABLE Matricula (
id_mat integer primary key,
data_mat date,
id_alu_fk integer,
foreign key (id_alu_fk) references Aluno (id_alu),
id_dis_fk integer,
foreign key (id_dis_fk) references Disciplina (id_dis),
id_fun_fk integer,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

CREATE TABLE Matricula_turma (
id_mtu integer primary key,
id_mat_fk integer,
foreign key (id_mat_fk) references Matricula (id_mat),
id_tur_fk integer,
foreign key (id_tur_fk) references Turma (id_tur)
);