-- Chapter 6, Q4
select max(salary) "Maximum", min(salary) "Minimum", sum(salary) "Sum", round(avg(salary)) "Average"
from employees;

-- Chapter 6, Q5
select job_id, max(salary) "Maximum", min(salary) "Minimum", sum(salary) "Sum", round(avg(salary)) "Average"
from employees
group by job_id;

-- Chapter 6, Q6
select job_id, count(*)
from employees
group by job_id;

-- Chapter 6, Q7
select count(distinct(manager_id)) "Number of Managers"
from employees
where manager_id is not null;

-- Chapter 6, Q8
select max(salary) - min(salary) "DIFFERENCE"
from employees;

-- Chapter 6, Q9
select manager_id, min(salary)
from employees
where manager_id is not null
group by manager_id
having min(salary) > 6000
order by min(salary) desc;

-- Chapter 6, Q10 (CASE)
select count(*) "TOTAL", 
    sum(case when to_char(hire_date, 'YYYY') = 2005 then 1 else 0 end) as "2005",
    sum(case when to_char(hire_date, 'YYYY') = 2006 then 1 else 0 end) as "2006",
    sum(case when to_char(hire_date, 'YYYY') = 2007 then 1 else 0 end) as "2007",
    sum(case when to_char(hire_date, 'YYYY') = 2008 then 1 else 0 end) as "2008"
from employees;

-- Chapter 6, Q10 (DECODE)
select count(*) "TOTAL", 
    sum(decode(to_char(hire_date, 'YYYY'), 2005, 1, 0)) as "2005",
    sum(decode(to_char(hire_date, 'YYYY'), 2006, 1, 0)) as "2006",
    sum(decode(to_char(hire_date, 'YYYY'), 2007, 1, 0)) as "2007",
    sum(decode(to_char(hire_date, 'YYYY'), 2008, 1, 0)) as "2008"
from employees;

-- Chapter 6, Q11 (CASE)
select job_id "Job", 
    sum(case when department_id = 20 then salary end) as "Dept 20",
    sum(case when department_id = 50 then salary end) as "Dept 50",
    sum(case when department_id = 80 then salary end) as "Dept 80",
    sum(case when department_id = 90 then salary end) as "Dept 90",
    sum(salary) "Total"
from employees
group by job_id;

-- Chapter 6, Q11 (DECODE)
select job_id "Job",
    sum(decode(department_id, 20, salary)) as "Dept 20",
    sum(decode(department_id, 50, salary)) as "Dept 50",
    sum(decode(department_id, 80, salary)) as "Dept 80",
    sum(decode(department_id, 90, salary)) as "Dept 90",
    sum(salary) "Total"
from employees
group by job_id;



-- Chapter 7, Q1
select location_id, street_address, city, state_province, country_name
from locations
natural join countries;

-- Chapter 7, Q2
select e.last_name, e.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id;

-- Chapter 7, Q3
select e.last_name, e.job_id, e.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
join locations l on d.location_id = l.location_id
where l.city = 'Toronto';

-- Chapter 7, Q4
select e.last_name "Employee", e.employee_id "Emp#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
join employees m on m.employee_id = e.manager_id;

-- Chapter 7, Q5
select e.last_name "Employee", e.employee_id "Emp#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
left join employees m on m.employee_id = e.manager_id
order by e.employee_id;

-- Chapter 7, Q6
select e.department_id "Department", e.last_name "Employee", c.last_name "Colleague"
from employees e
join employees c on c.department_id = e.department_id
where e.employee_id <> c.employee_id
order by e.department_id;

-- Chapter 7, Q7
desc job_grades;

select e.first_name, e.job_id, d.department_name, e.salary, g.grade
from employees e
join departments d on d.department_id = e.department_id
join job_grades g on e.salary between g.lowest_sal and g.highest_sal;



