create table sales_reps(
id number(4) not null,
name varchar2(50) not null,
salary number(10, 2),
commission_pct number(2,2),
constraint CONST_SALES_REPS_ID_PK primary key(id)
);

desc sales_reps;

insert into sales_reps
select employee_id, last_name, salary, commission_pct
from employees
where job_id like '%REP%';

commit;

select * from sales_reps order by id;

-- Updating Columns with Subquery
update sales_reps
set (salary, commission_pct) = (
    select salary, commission_pct from sales_reps where id = 151
)
where id = 150;

update employees
set department_id = (select department_id from employees where employee_id = 100) --90
where job_id = (select job_id from employees where employee_id = 200);

select * from employees where job_id = 'AD_ASST'; --10

rollback;

delete --ORA-02292: integrity constraint (HR.DEPT_MGR_FK) violated - child record found
from employees
where department_id IN (
    select department_id from departments where department_name like '%Public%'
);

truncate table sales_reps; --DDL, empties the table keeping structure intact

delete
from sales_reps;

rollback;

select * from sales_reps order by id;




