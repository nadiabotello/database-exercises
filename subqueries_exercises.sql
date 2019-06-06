use employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.

select * from titles;

select hire_date FROM employees
where emp_no = '101010';

SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE hire_date = '1990-10-22'
);

-- Find all the titles held by all employees with the first name Aamod

select * from employees
where first_name = 'Aamod';

SELECT titles.title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

-- Find all the current department managers that are female.

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND dept_manager.to_date > curdate()
    )
