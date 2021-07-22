create database cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2), # O 5 é a quantidade de elementos que a variável peso terá, e o 2 quantos numeros após a virgula, por exemplo, 102,35 (5 numeros e 2 após a vígrula)
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
) default charset = utf8;


#-----------------------------------------------------------------------------------------------------
# Criando dados nas Tabelas
#-----------------------------------------------------------------------------------------------------

use cadastro;
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) # id não é necessário colocar pois já declaramos ele como "Auto Increment"
values
(default,'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default,'Pedro', '2000-07-15', 'M', '52.3', '1.65', 'Brasil'),
(default,'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

#------------------------------ OUTRA FORMA DE CRIAR OS DADOS --------------------------------------
# Quando os valores forem colocados exatamente na ordem a qual a tabela foi criada, podemos fazer da seguinte forma:
insert into pessoas values
(default,'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');


select * from pessoas;


#------------------------------ COMANDOS PARA ALTERAR A TABELA --------------------------------------

desc pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
modify column profissao varchar(20) not null default '';

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
add codigo int first;

alter table pessoas
rename to gafanhotos; # Este comando é usado para renomear a tabela, neste caso a tabela pessoas será agora gafanhotos

desc gafanhotos;

#------------------------------ CRIANDO UMA NOVA TABELA - CURSOS --------------------------------------

create table if not exists cursos
(
nome varchar(30) not null unique,    # A funçãi unique serve para não permitir o nome de dois cursos iguais, ela tem a "mesma função" do primary key, porém são diferentes
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);
desc cursos;

#------------------------------ CRIANDO UMA NOVA TABELA - TESTES --------------------------------------

create table if not exists testes
(
id int,
nome varchar(10),
idade int
);

insert into testes value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

drop table if exists testes;

