SELECT
    a.name as country,
    b.name as continent
FROM
    country a
    inner join continent b on a.continent = b.code
order by
    a.name ASC;