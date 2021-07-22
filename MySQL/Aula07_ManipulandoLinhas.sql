# ------------------------------------------- MANIPULANDO REGISTROS (OU LINHAS OU TUPLAS) -------------------------------------------
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritimo', 'Lógicas de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP Iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução a Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados', '30', '15', '2016'),
('7', 'Word', 'Curso Completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Dança Ritimica', '40', '30', '2018'),
('9', 'Cozinha Arabe', 'Aprenda a Fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar Polemica e Ganhar Inscritos', '5', '2', '2018');

select * from cursos;

# Manipulando as Linhas que foram colocadas erradas de propósito

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;    #Limita a ação do comando apenas a 1 linha

update cursos
set ano = '2050', carga = '800'
where ano = '2018';   # Esta forma é muito perigosa, deve ser feita sempre apenas de 1 em 1, ou com total conciência do que pode ocorrer

update cursos
set ano = '2050', carga = '800'
where ano = '2018'
limit 1;    # Desta forma ele irá alterar apenas a primeira linha, as demais não, sendo assim, é mais seguro fazer desta forma!!


# COMANDOS PARA DELETAR LINHAS QUE NÃO QUEREMOS MAIS

delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018'
limit 2;

#---------------------------------------------------------------------------------

truncate cursos;    #Deleta todos os dados da Tabela - Não é possível recuperar os dados deletados!!
select * from cursos;
