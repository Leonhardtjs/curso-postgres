SELECT code, name, '123' FROM continent WHERE name LIKE '%America%'
UNION
SELECT 1, 'OTRA cosa', name FROM continent WHERE code in (3,5) ORDER BY name ASC;