select * from employees
where first_name like 'M%';

select * from employees
where regexp_like(first_name, '[A-B]')
order by first_name;

select * from employees
where salary between 10000 and 20000;

select * from employees
where hire_date > '1-JAN-2005';

select * from employees
where salary between 10000 and 20000
order by 2; -- Column Index (Starting from 1)

