use employees;

select * from titles;

SELECT DISTINCT title FROM titles;

SELECT first_name, last_name
from employees
where last_name like 'e%e'
GROUP BY first_name, last_name;

select last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name;

select COUNT(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name;

select gender, count(*)
from employees
where first_name in ('Irena', 'Vidya','Maya')
GROUP BY gender
ORDER BY COUNT(*);