-- Question 1
select *
from jobs where min_salary > 10000;

-- Question 2
select first_name, hire_date
from employees
where job_id in ('IT_PROG', 'SA_MAN');

-- Question 3
select *
from employees
where employee_id in (150, 160);

-- Question 4
select job_title, (max_salary - min_salary)
from jobs
where max_salary between 10000 and 20000;

