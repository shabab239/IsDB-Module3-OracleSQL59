-- Question 1
create table emp1281539(
eid number(9) constraint CONST_EMP_PK primary key,
ename varchar2(60) not null,
salary number(11,2),
hire_date date,
address varchar2(200)
);

-- Question 2
select department_id, avg(salary)
from employees
group by department_id
having max(salary) > 12000;

-- Question 3
select first_name, last_name
from employees
where first_name like 'S%';

-- Question 4
select avg(e.salary)
from employees e
join departments d on d.department_id = e.department_id
where d.department_name = 'Sales';

-- Question 5
select first_name, last_name
from employees
order by hire_date asc;



