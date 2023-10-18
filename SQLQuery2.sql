select * from COUNTRIES
select*from departments
select * from employees
select * from job_history
select * from jobs
select * from LOCATIONS 
select * from REGIONS
select * From employees --order by salary desc
--.) Display the minimum salary. 
select MIN(salary)from employees


--2.) Display the highest salary.
select Max(salary) From employees

--3.) Display the total salary of all employees. 
select SUM (salary) from employees

--4.) Display the average salary of all employees.
select AVG (salary)from employees

--5.) Issue a query to count the number of rows in the employee table. The result should be just one row.
select COUNT (*) from employees
--6.) Issue a query to count the number of employees that make commission. The result should be just one row.
select count(commission_pct)  from employees 

--7.) Issue a query to count the number of employees’ first name column. The result should be just one row.
Select count(first_name) from employees
--8.) Display all employees that make less than Peter Hall.

select first_name, last_name, salary from employees where salary <
(select salary from employees where first_name = 'peter' and last_name = 'hall') order by salary desc

--9.) Display all the employees in the same department as Lisa Ozer.
select first_name, last_name,department_id from employees where department_id =
(select department_id from employees where first_name = 'lisa' and last_name ='ozer')
--10.) Display all the employees in the same department as Martha Sullivan and that make more than TJ Olson.
select first_name, last_name,department_id, salary from employees where department_id =
(select department_id from employees where first_name = 'Martha' and last_name ='Sullivan')
and salary > (select salary from employees where first_name = 'tj' and last_name = 'olson')order by salary desc
