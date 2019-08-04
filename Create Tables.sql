CREATE TABLE employees(
  emp_no int PRIMARY KEY,
  birthdate date,
  first_name varchar(50),
  last_name varchar(50),
  gender char(1),
  hire_date date
);


CREATE TABLE departments (
  dept_no varchar(20)  PRIMARY KEY,
  dept_name varchar(100)
 );

CREATE TABLE titles (
  emp_no int,
  title varchar(200),
  from_date date,
  to_date date,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salaries(
  emp_no int,
  salary int,
  from_date date,
  to_date date,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)		
);




CREATE TABLE dept_mgr(
  dept_no varchar(20),
  emp_no int,
  from_date date,
  to_date date,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE dept_emp(
  emp_no int,
  dept_no varchar(20),
  from_date date,
  to_date date,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


select * from dept_mgr
