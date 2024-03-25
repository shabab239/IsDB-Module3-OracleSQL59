select *
from employees
order by first_name;

select upper(first_name) "First Name"
from employees;

select *
from employees
where hire_date between '1-FEB-21' and '28-FEB-21';
-- where hire_date >= '1-FEB-21' and hire_date <= '28-FEB-21';

select *
from employees
where mod(employee_id, 2) = 0;