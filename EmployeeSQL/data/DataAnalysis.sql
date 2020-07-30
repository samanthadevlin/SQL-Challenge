--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
	Left join salaries as s
	on (e.emp_no = s.emp_no)
order by e.emp_no
;

--2. List first name, last name, and hire date for employees who were hired in 1986.

select emp_no, first_name, last_name
from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01';

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, de.dept_name, emp.emp_no, emp.last_name, emp.first_name
from dept_manager as dm
inner join departments as de
on dm.dept_no = de.dept_no
inner join employees as emp
on dm.emp_no = emp.emp_no;

select * from departments;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select  emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp 
inner join dept_emp as dept  
on emp.emp_no = dept.emp_no
inner join departments as de
on de.dept_no = dept.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex 
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select  emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp 
inner join dept_emp as dept  
on emp.emp_no = dept.emp_no
inner join departments as de
on de.dept_no = dept.dept_no
where de.dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select  emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp 
inner join dept_emp as dept  
on emp.emp_no = dept.emp_no
inner join departments as de
on de.dept_no = dept.dept_no
where de.dept_name = 'Sales' or de.dept_name = 'Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Frequency"
from employees
group by last_name
order by count(last_name) DESC;

