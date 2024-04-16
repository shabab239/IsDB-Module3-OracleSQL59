select e.first_name, e.last_name, e.salary
from employees e
join departments d on e.department_id = d.department_id
join locations l on l.location_id = d.location_id
where l.city = 'Oxford';


select j.job_title, d.department_name, e.last_name, e.hire_date
from employees e
join departments d on e.department_id = d.department_id
join jobs j on j.job_id = e.job_id
where to_char(e.hire_date, 'YYYY') between 2000 and 2005;

select j.job_title, d.department_name, e.last_name, jh.start_date, e.hire_date
from employees e
join departments d on e.department_id = d.department_id
join jobs j on j.job_id = e.job_id
join job_history jh on jh.employee_id = e.employee_id
where to_char(jh.start_date, 'YYYY') between 2000 and 2005;


select e.first_name, d.department_name
from employees e
left join departments d on e.department_id = d.department_id;


select e.first_name, d.department_name
from employees e
right join departments d on e.department_id = d.department_id;


select e.first_name, d.department_name
from employees e
full join departments d on e.department_id = d.department_id;


select e.first_name, d.department_name
from employees e
cross join departments d;


