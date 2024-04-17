-- multiple column pairwise matching
select first_name, department_id, salary
from employees
where (salary, department_id) in (
    select min(salary), department_id
    from employees
    group by department_id
)
order by department_id;

-- Allah zane edi diya ki hoilo! -- Pore Bujhsi LoL
select last_name, manager_id from employees
where employee_id not in (
    select manager_id from employees where manager_id is not null
);