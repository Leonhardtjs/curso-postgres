-- country a  - name, continentCode (codigo numérico)
-- continent b - name as continentName

select
    a.name as country,
    a.continent as continentCode,
    b.name as continentName
from
    country a full
    outer join continent b on a.continent = b.code order by a.name DESC;