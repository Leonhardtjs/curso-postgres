SELECT
    max(hire_date),
    max(hire_date) + INTERVAL '1 days' as days,
    max(hire_date) + INTERVAL '1 month' as mounth,
    max(hire_date) + INTERVAL '1 year' as years,
    max(hire_date) + INTERVAL '1.1 years' + INTERVAL '1 day' as years,
	date_part('year', now()),
    make_interval( years := date_part('year', now())::integer),
    max(hire_date) + make_interval( years:=23)
from
    employees;