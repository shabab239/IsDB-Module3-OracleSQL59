-- Chapter 3, Q-3
select last_name, salary
from employees
where salary not between 5000 and 12000;

-- Chapter 3, Q-5
select last_name, department_id
from employees
where department_id in (20, 50)
order by last_name;

-- Chapter 3, Q-6
select last_name "Employee", salary "Monthly Salary"
from employees
where (salary between 5000 and 12000) and department_id in (20, 50)
order by last_name;

-- Chapter 3, Q-9
select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by 2 desc, 3 desc;

-- Chapter 3, Q-15
select last_name, salary, commission_pct
from employees
where commission_pct = 20 / 100;

-- Chapter 4, Q-2
select employee_id, last_name, salary, round(salary + (salary * 15.5 / 100)) "New Salary"
from employees;

-- Chapter 4, Q-5a
select initcap(last_name), length(last_name)
from employees
where last_name like 'J%' or last_name like 'A%' or last_name like 'M%'
order by last_name;
select initcap(last_name), length(last_name)
from employees
where substr(last_name, 1, 1) in ('J','A','M')
order by last_name;

-- Chapter 4, Q-7
select last_name, lpad(salary, 15, '$') "SALARY"
from employees;

-- Chapter 5, Q-1
select last_name || ' earns ' || to_char(salary, 'fm$999999.00') || ' monthly but wants ' || to_char(3*salary, 'fm$999999.00') || '.'
from employees;

-- Chapter 5, Q-2
select last_name, hire_date, to_char(next_day(add_months(hire_date, 6), 'MON'), 'fmDay, "the" Ddspth "of" Month, YYYY') Review
from employees;







