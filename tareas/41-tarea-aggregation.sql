-- 1. Cuantos usuarios tenemos con cuentas @google.com
-- Tip: count, like
SELECT COUNT(*) AS total_usuarios FROM users WHERE email LIKE '%@google.com';
SELECT * FROM users WHERE email LIKE '%google.com';

-- 2. De qué países son los usuarios con cuentas de @google.com
-- Tip: distinct

SELECT DISTINCT country FROM users WHERE email LIKE '%@google.com';

-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by

SELECT COUNT(*), country FROM users GROUP BY country; 


-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection

SELECT first_name, last_name, country, last_connection FROM users WHERE country = 'Iceland';

-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX
SELECT count(*) FROM users WHERE country = 'Iceland' AND last_connection LIKE '112.%';


-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 
select
    *
from
    users
where
    country = 'Iceland' AND
    (last_connection like '112.%' or
    last_connection like '28.%' or
    last_connection like '188.%');



-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también

select
    last_name, first_name, last_connection
from
    users
where
    (country = 'Iceland') AND
    ((last_connection like '112.%') or
    (last_connection like '28.%') or
    (last_connection like '188.%')) order by last_name, first_name ASC;



-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)
SELECT first_name, last_name, country FROM users WHERE country IN ('Mexico', 'Honduras', 'Costa Rica') order by first_name, last_name ASC;



-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc

SELECT  count(*), country FROM users WHERE country IN ('Mexico', 'Honduras', 'Costa Rica') group by country order by country ASC;
