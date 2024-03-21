select employee_id, first_name "First Name", job_id "Job ID", salary "Salary", salary * 12 "Yearly Salary"
from employees
where salary <> 9000
order by salary desc
-- fetch first 5 rows only;
offset 5 rows fetch next 5 rows only;

select employee_id, first_name "First Name", job_id "Job ID", salary "Salary", salary * 12 "Yearly Salary"
from employees
where first_name like '%&Emplyoee_Name' and salary > '&Salary';


set verify on -- it prints the query with the param value
select employee_id, first_name "First Name", job_id "Job ID", salary "Salary", salary * 12 "Yearly Salary"
from employees
where first_name like '&Emplyoee_Name%' and salary > '&Salary';


