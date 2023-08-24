Create TABLE dept_manager(
	dept_no VARCHAR(4) not null,
	emp_no INT not null);
----
Create TABLE dept_emp(
	emp_no int not null,
	dept_no VARCHAR(4) not null);
------	
Create TABLE departments(
	dept_no varchar(4) PRIMARY KEY, 
	dept_name varchar(200) UNIQUE);
---
Create TABLE employees(
	emp_no INT PRIMARY KEY not null,
	emp_title_id Varchar(10),
	birth_date date,
	first_name Varchar(255),
	last_name Varchar(255),
	sex char(1),
	hire_date date);
-------
Create TABLE titles(
	title_id Varchar(5) Primary key,
	title Varchar(150) Unique);
-------
Create TABLE salaries(
	emp_no int Primary key not null,
	salary int);
----
-- Add foreign key constraint for dept_no
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept
FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

-- Add foreign key constraint for emp_no
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_emp
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

-- Add foreign key constraint for emp_no
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_emp
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

-- Add foreign key constraint for dept_no
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dept
FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

-- Add foreign key constraint for emp_no
ALTER TABLE salaries
ADD CONSTRAINT fk_salaries_emp
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

-- Add a foreign key constraint for emp_title_id in employees table
ALTER TABLE employees
ADD CONSTRAINT fk_employees_title
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);


