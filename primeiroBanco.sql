create database empresa;
use empresa;
create table cliente(
idCliente int auto_increment primary key,
nome varchar(30) not null, 
endereco varchar (40),
celular char(15));

insert into cliente(nome, endereco, celular)
values
('maria dos santos', 'Rua A, 23', '(11) 98767-9000'),
('maria dos males', 'Rua B, 3', '(11) 98767-7877'),
('maria das graça', 'Rua C, 66', '(11) 98767-7777'),
('maria dos rios', 'Rua D, 69', '(11) 98767-6666'),
('maria dos gols', 'Rua E, 88', '(11) 98767-1111');

select * from cliente order by endereco;

update cliente set nome='Ana Maria dos Santos' where idCliente=1;

delete from cliente where idcliente=2;
