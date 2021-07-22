#-------------------------------- MODELOS RELACIONAIS --------------------------------

use cadastro;
desc gafanhotos;

alter table gafanhotos add cursopreferido int;
alter table gafanhotos add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set gafanhotos.cursopreferido = '6' where gafanhotos.id = '1';

delete from cursos where cursos.idcurso = '6';  # Ele não deixará realizar o comando, pois já existe uma relação entre esse curso e uma pessoa

delete from cursos where cursos.idcurso = '28'; # Esta operação é permitida pois não há relação com nenhum aluno

#-----------------------------------------------------------------------------------------------------------------------

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select * from gafanhotos;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c   # A função "left outer join" (ou left join) irá juntar as duas tabelas dando preferencia a tabela da esquerda, nesse caso gafanhotos, e irá mostrar tudo que ela possui
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c   # A função "right outer join" (ou right join) irá juntar as duas tabelas dando preferencia a tabela da direita, nesse caso Cursos, e irá mostrar tudo que ela possui
on c.idcurso = g.cursopreferido;

