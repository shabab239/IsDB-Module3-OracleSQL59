select first_name, hire_date
from employees
where hire_date > (select hire_date from employees where last_name = 'Davies')
order by hire_date;


select last_name, job_id, salary
from employees
where job_id = (select job_id from employees where last_name = 'Taylor' fetch first 1 row only)
and salary > (select salary from employees where last_name = 'Taylor' fetch first 1 row only);


select department_id, min(salary)
from employees
group by department_id
having min (salary) > (
        select min(salary)
        from employees
        where department_id = 30
);

