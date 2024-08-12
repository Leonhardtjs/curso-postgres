--- ¿Quiero saber los idiomas oficiales que se hablan por continente?


select * from country;

select * from continent;


select DISTINCT
    a."language",
    c.name as continent
from
    countrylanguage a
    inner JOIN country b ON a.countrycode = b.code
    inner join continent c on b.continent = c.code
where
    a.isofficial = true;
    

--- ¿Cuantos idiomas oficiales se hablan por continente?
select count(*), continent from (select DISTINCT
    a."language",
    c.name as continent
from
    countrylanguage a
    inner JOIN country b ON a.countrycode = b.code
    inner join continent c on b.continent = c.code
where
    a.isofficial = true) as totales group by continent;

