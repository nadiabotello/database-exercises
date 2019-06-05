use employees;

-- refactored exercise 1 for order by

select * from employees
where first_name in ('Irena', 'Vidya','Maya')
ORDER BY first_name;

-- refactored exercise 2 for order by

select * from employees
where first_name in ('Irena', 'Vidya','Maya')
ORDER BY first_name, last_name;

-- refactored exercise 3 for order by

select * from employees
where first_name in ('Irena', 'Vidya','Maya')
ORDER BY last_name, first_name;

-- refactored exercise 4 for order by

select * from employees
where last_name like 'E%'
ORDER BY emp_no;

-- refactored exercise 5 for order by

select * from employees
where last_name like 'E%'
ORDER BY emp_no DESC;

-- refactored exercise 6 for order by

select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;



select * from employees
where last_name like 'E%';

select *
from employees
where hire_date like '199%';

select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';

select * from employees
where (first_name = 'Irena' OR
       first_name = 'Vidya' OR
       first_name ='Maya')
  AND gender = 'M';

select *
from employees
where last_name like 'e%'
   OR last_name like '%e';

select *
from employees
where last_name like 'e%e';


-- refactored for functions exercise

select CONCAT(
    first_name,
    ' ',
    last_name
           )
from employees
where last_name like 'e%e';


select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%';

-- refactored for functions exercise

SELECT *, DATEDIFF(now(), hire_date)
from employees
where birth_date like '%12-25'
  AND hire_date like '199%';




select *
from employees
where last_name like '%q%' and last_name not like '%qu%';