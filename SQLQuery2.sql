select * from COUNTRIES
select*from departments
select * from employees select*from departments
select * from job_history
select * from jobs
select * from LOCATIONS select*from departments
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


--11.) Display all the departments that exist in the departments table that are not in the employees’ table. Do not use a where clause.
select department_id from departments
except
select distinct department_id from employees
--12.) Display all the departments that exist in department tables that are also in the employees’ table. Do not use a where clause.
select department_id from departments
intersect
select distinct department_id from employees

--13.) Display all the departments name, street address, postal code, city, and state of each department. Use the departments and locations table for this query
SELECT d.department_id, d. department_name, l.street_address, l.postal_code, l.city, l.state_province
	from departments d join LOCATIONS l on D.location_id = l.location_id
--14.) Display the first name and salary of all the employees in the accounting departments.
select a.department_id,a.department_name,b.first_name,b.salary
	from departments a join employees b on a.department_id = b.department_id where a.department_name = 'accounting'
--15.) Display all the last name of all the employees whose department location id are 1700 and 1800.
--16.) Display the phone number of all the employees in the Marketing department.
select a.department_id,a.department_name,b.phone_number
	from departments a join employees b on a.department_id = b. department_id where a.department_name = 'marketing'
--17.) Display all the employees in the Shipping and Marketing departments who make more than 3100. 
select a.depa
--18). Write an SQL query to print the first three characters of FIRST_NAME from employee’s table.
 --19.) Display all the employees who were hired before Tayler Fox.
--20.) Display names and salary of the employees in executive department. 
