use employees;

select * from employees
where first_name in ('Irena', 'Vidya','Maya');

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

select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%';

select *
from employees
where last_name like '%q%' and last_name not like '%qu%';