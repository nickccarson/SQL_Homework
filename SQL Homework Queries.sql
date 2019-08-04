--Question 1 
--List the following details of each employee: employee number, last name, first name, gender, and salary.

select 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
from employees e
left join salaries s on e.emp_no =s.emp_no ;



--Question 2
--List employees who were hired in 1986.
-- this may need to be done differently 

select * 
from 
	(select
	e.emp_no,
	e.last_name,
	e.first_name,
	, extract(year from hire_date)
	from employees as e) as table1
where date_part = 1986;


--Question3 
--List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select 
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
from  dept_mgr dm
left join departments d on dm.dept_no= d.dept_no
left join employees e on dm.emp_no = e.emp_no;  


--Question 4
--List the department of each employee with the following information: employee number, last name, first name, and department name.

select
	e.emp_no,
	e.last_name,
	e.first_name,
	de.dept_no,
	d.dept_name
from employees e
left join dept_emp de on e.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no;

--Question 5
--List all employees whose first name is "Hercules" and last names begin with "B."

select 
	emp_no,
	first_name,
	last_name
from employees 
where first_name = 'Hercules'
and last_name like 'B%';


--Question6
--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select  
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
left join dept_emp de on de.emp_no = e.emp_no
left join departments d on de.dept_no = d.dept_no
where d.dept_name= 'Sales';


--Question 7 
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


select  
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
left join dept_emp de on de.emp_no = e.emp_no
left join departments d on de.dept_no = d.dept_no
where d.dept_name= 'Sales' 
or d.dept_name = 'Development';



--Question 8
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(*) as frequency
from employees 
group by last_name
order by count(*) desc

