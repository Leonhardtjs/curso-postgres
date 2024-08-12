select
    *
from
    employees
where
    hire_date > date('1998-02-05')
order by
    hire_date DESC;


select
    max(hire_date) as mas_nuevo,
    min(hire_date) as primer_empleado
from
    employees;
    
    
select
    *
from
    employees
where hire_date BETWEEN '1999-01-01' and '2001-01-04' order by hire_date DESC;



