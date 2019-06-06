use employees;

select * from employees;
select * from departments;
select * from dept_manager;

-- departments with department managers' names

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', departments.dept_name AS 'Department'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01';

-- departments currently managed by women

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', departments.dept_name AS 'Department'
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND gender = 'F';

-- titles of employees currently working in customer service dept with count



