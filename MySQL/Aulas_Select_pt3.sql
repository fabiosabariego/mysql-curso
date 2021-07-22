#-------------------------------- TRABALHANDO COM SELECT - PARTE 3 --------------------------------
# AGRUPAMENTO

#-----------------------------------------------------------------------------------
select carga from cursos
group by carga;

#-----------------------------------------------------------------------------------
select carga, count(*) from cursos
group by carga;

#-----------------------------------------------------------------------------------
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

#-----------------------------------------------------------------------------------
select carga, totaulas from cursos where totaulas = 30
group by carga;

#-----------------------------------------------------------------------------------
select carga, totaulas, count(nome) from cursos where totaulas = 30
group by carga;

#-----------------------------------------------------------------------------------
select ano, count(*) from cursos
group by ano
order by count(*) desc;

#-----------------------------------------------------------------------------------
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

#-----------------------------------------------------------------------------------
select ano, count(*) from cursos where totaulas > 3
group by ano
having ano >= 2013
order by count(*) desc;

#-----------------------------------------------------------------------------------
select avg(carga) from cursos;

#-----------------------------------------------------------------------------------
select carga, count(*) from cursos where ano > '2015'
group by carga;

#-----------------------------------------------------------------------------------
select carga, count(*) from cursos where ano > '2015'
group by carga
having carga > (select avg(carga) from cursos);

