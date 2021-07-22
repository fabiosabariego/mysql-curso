#------------------------------- EXERCICIOS 02 -------------------------------

#---------------------------------------------------------------------
# EX01 - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
use cadastro;
select profissao, count(*) from gafanhotos
group by profissao
order by profissao; 

#---------------------------------------------------------------------
# EX02 - Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005
use cadastro;
select sexo, count(*) from gafanhotos where nascimento >= '2005-01-01'
group by sexo
order by count(sexo);

#---------------------------------------------------------------------
# EX03 - Uma lista com os gafanhotos que nasceram fora do brasil mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade
use cadastro;
select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) >= 3
order by count(nacionalidade) desc;

#---------------------------------------------------------------------
# EX04 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam acima de 100kg e que estão acima da média de altura de todos cadastrados
use cadastro;
select avg(altura) from gafanhotos;
select altura, count(*) from gafanhotos where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos)
order by count(altura) desc;