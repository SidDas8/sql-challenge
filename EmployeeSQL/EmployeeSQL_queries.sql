select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
JOIN salaries 
ON employees.emp_no = salaries.emp_no;
	   
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT dman.dept_no, dep.dept_name, dman.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS dman
JOIN departments AS dep ON dman.dept_no = dep.dept_no
JOIN employees AS emp ON dman.emp_no = emp.emp_no

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS demp ON emp.emp_no = demp.emp_no
JOIN departments AS dep ON demp.dept_no = dep.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- 7. List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.











