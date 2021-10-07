desc cliente;
desc endereco;
desc pais;

#1
alter table cliente add rg_cli varchar (100);

#02
alter table cliente add telefone_cli varchar (100) after email_cli;

#03
alter table endereco add referencia_end varchar (200);

#04
alter table pais drop continente_pai;

#05
alter table cliente change data_nasc_cli data_nasc_cli varchar (100);

#06
drop table cliente;
drop table endereco;
drop table cidade;
drop table estado;
drop table pais;