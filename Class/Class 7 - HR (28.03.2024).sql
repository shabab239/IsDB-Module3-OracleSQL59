select count(COMMISSION_PCT)
from employees;

select avg(nvl(commission_pct, 0)) "Average" -- Not excluding null values so that all are included the avg calculation
from employees;

select job_id, department_id, commission_pct, avg(salary)
from employees 
group by job_id, department_id, commission_pct;


select MANAGER_ID, count(employee_id), round(avg(salary))
from employees
group by MANAGER_ID
order by manager_id;


select job_id, department_id, commission_pct, avg(salary)
from employees 
where commission_pct is not null
group by job_id, department_id, commission_pct
having avg(salary) < 10000
order by department_id, avg(salary) desc; -- order by 3


select job_id, department_id, avg(salary)
from employees
where salary < 5000
group by job_id, department_id
having count(*) > 5
order by department_id, avg(salary) desc;


select job_id, sum(salary) PAYROLL
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) > 13000
order by sum(salary);


select hire_date, count(employee_id)
from employees
group by hire_date;




-- Question 1 --years in which more than 10 employees joined
select to_char(hire_date, 'YYYY') "Year", count(employee_id) "Employees Joined"
from employees
group by to_char(hire_date, 'YYYY')
having count(employee_id) > 10;

-- Question 2 -- departments in which more than five employees have commission percentage
select department_id "Department ID"
from employees
where commission_pct is not null
group by department_id
having count(employee_id) > 5;

-- Question 3 -- job ids with average salary more than 10000
select job_id "Job ID", avg(nvl(salary, 0)) "Average Salary"
from employees
group by job_id
having avg(nvl(salary, 0)) > 10000;























