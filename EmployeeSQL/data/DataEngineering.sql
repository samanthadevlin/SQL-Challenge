DROP TABLE IF Exists departments;
CREATE TABLE departments(
dept_no VARCHAR(30) NOT NULL,
dept_name VARCHAR(30) NOT NULL,
Primary key (dept_no)
);
SELECT * FROM departments

DROP TABLE IF Exists dept_emp;
CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(30) NOT NULL,
foreign key (emp_no) references employees (emp_no)
);
SELECT * FROM dept_emp

DROP TABLE IF Exists dept_manager;
CREATE TABLE dept_manager(
dept_no VARCHAR(30) NOT NULL,
emp_no INT,
foreign key (dept_no) references departments (dept_no)
);
SELECT * FROM dept_manager

DROP TABLE IF Exists employees;
CREATE TABLE employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR(30) NOT NULL,
birth_date DATE,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(30) NOT NULL,
hire_date DATE,
primary key (emp_no)
);
SELECT * FROM employees

DROP TABLE IF Exists salaries;
CREATE TABLE salaries(
emp_no INT,
salary INT,
foreign key (emp_no) references employees(emp_no)
);
SELECT * FROM salaries