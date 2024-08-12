-- Quiero que muestren el país con más ciudades
-- Campos: total de ciudades y el nombre del país
-- usar Inner Join


select
    count(*) as total,
    b.name as country
from
    city a
    inner join country b on a.countrycode = b.code
group by
    b.name
order by
    count(*) DESC
limit
    1;