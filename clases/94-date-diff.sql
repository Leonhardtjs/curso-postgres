-- Sacar la cantidad de años desde x hasta hoy

SELECT
    hire_date,
    MAKE_INTERVAL (YEARS := 2024 - EXTRACT(YEARS from hire_date)::INTEGER) as manual,
    MAKE_INTERVAL (YEARS := date_part('years', CURRENT_DATE)::INTEGER - EXTRACT(YEARS from hire_date)::INTEGER) as computed
FROM
    employees order by hire_date DESC;




SELECT
    hire_date,
    hire_date + INTERVAL '24 years'
FROM
    employees order by hire_date DESC;
   
UPDATE employees
set hire_date =  hire_date + INTERVAL '24 years'