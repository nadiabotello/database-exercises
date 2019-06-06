use employees;

select * from employees;
select * from departments;
select * from dept_manager;
select * from titles;
select * from salaries;

-- departments with department managers' names

SELECT departments.dept_name AS Department, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;

-- departments currently managed by women

SELECT departments.dept_name AS Department, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND gender = 'F';

-- titles of employees currently working in customer service dept with count

SELECT titles.title AS Title, COUNT(*) AS Count
FROM titles
JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
JOIN departments ON departments.dept_no = dept_emp.emp_no
WHERE titles.to_date > curdate() AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

-- current salaries of all current managers

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Dept_Manager, departments.dept_name AS 'Department', salaries.salary AS 'Salary'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate() AND salaries.to_date > curdate();