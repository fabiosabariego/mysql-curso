#-------------------------------------------------------------------
# EX01 - Uma lista com o nome de todas gafanhotas
use cadastro;
desc gafanhotos;
select * from gafanhotos where sexo = 'F';

#-------------------------------------------------------------------
# EX02 - Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2020 e 31/12/2015
use cadastro;
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

#-------------------------------------------------------------------
# EX03 - Uma lista com todos os homens que trabalham com programação
use cadastro;
select * from gafanhotos where sexo = 'M' and profissao = 'Programador';

#-------------------------------------------------------------------
# EX04 - Uma lista com todos os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J
use cadastro;
select * from gafanhotos  where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'J%';

#-------------------------------------------------------------------
# EX05 - Uma lista com o nome e nacionalidade de todos os homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100kg
use cadastro;
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%SILVA%' and not nacionalidade = 'Brasil' and peso < '100';

#-------------------------------------------------------------------
# EX06 - Qual a maior altura entre gafanhotos homens que moram no Brasil
use cadastro;
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

#-------------------------------------------------------------------
# EX07 - Qual a média de peso dos gafanhotos cadastrados
use cadastro;
select avg(peso) from gafanhotos;

#-------------------------------------------------------------------
# EX08 - Qual o menor peso entre os gafanhotos mulheres que nasceram fora do Brasil, entre 01/jan/1990 e 31/dez/2000
use cadastro;
select min(peso) from gafanhotos where nacionalidade != 'Brasil' and sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31';

#-------------------------------------------------------------------
# EX09 - Quantas gafanhotas mulheres tem mais de 1.90 de altura
use cadastro;
select count(*) from gafanhotos where sexo = 'F' and altura > '1.90';