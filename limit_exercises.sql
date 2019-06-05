use employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;


select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;


-- page formula!!

-- offset = limit * page-goal - limit