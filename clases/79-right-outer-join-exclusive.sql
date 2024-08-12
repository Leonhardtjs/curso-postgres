select
    a.name as country,
    a.continent as continentCode,
    b.name as continentName
from
    country a right join continent b on a.continent = b.code WHERE a.continent is null order by a.name DESC;