-- Chapter 7, Q7
desc job_grades;

select e.first_name, e.job_id, d.department_name, e.salary, g.grade
from employees e
join departments d on d.department_id = e.department_id
join job_grades g on e.salary between g.lowest_sal and g.highest_sal;

-- Chapter 7, Q9
select e.last_name, e.hire_date, m.last_name, m.hire_date
from employees e
join employees m on e.manager_id = m.employee_id
where e.hire_date < m.hire_date;




-- Chapter 8, Q2
select employee_id, last_name, salary
from employees
where salary > (select avg(salary) from employees)
order by salary;

-- Chapter 8, Q3
select employee_id, last_name
from employees
where department_id in (select department_id from employees where last_name like '%u%');

-- Chapter 8, Q4
select e.last_name, e.department_id, e.job_id
from employees e
join departments d on e.department_id = d.department_id
where d.location_id = 1700;

-- Chapter 8, Q5
select e.last_name, e.salary
from employees e
join employees m on e.manager_id = m.employee_id
where m.last_name = 'King';

select last_name, salary
from employees
where manager_id in (select employee_id from employees where last_name = 'King');

-- Chapter 8, Q6
select department_id, last_name, job_id
from employees e
where department_id in (select department_id from departments where department_name = 'Executive');

-- Chapter 8, Q7
select last_name, salary
from employees
where salary > any(select salary from employees where department_id = 60);

-- Chapter 8, Q8
select employee_id, last_name, salary
from employees
where salary > (select avg(salary) from employees)
and department_id in (select department_id from employees where last_name like '%u%');













