use employees;

select * from titles;

SELECT DISTINCT title FROM titles;

SELECT last_name
from employees
where last_name like 'e%e'
GROUP BY last_name;

SELECT first_name, last_name
from employees
where last_name like 'e%e'
GROUP BY first_name, last_name;

select distinct last_name
from employees
where last_name like '%q%' and last_name not like '%qu%';

select COUNT(last_name), last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name;

select gender, count(gender)
from employees
where first_name in ('Irena', 'Vidya','Maya')
GROUP BY gender;