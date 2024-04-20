create view empdept50 as
select employee_id, first_name, last_name
from employees
where department_id = 50;

-- Replace can replace old version of the view.
create or replace view empdept50("ID" , "First Name", "Last Name") as
select employee_id, first_name, last_name
from employees
where department_id = 50;

create or replace view empdept50 as
select employee_id "ID", first_name "First Name", last_name "Last Name"
from employees
where department_id = 50;

desc empdept50;

select * from empdept50;

drop view empdept50;

create or replace view empdept50 as
select employee_id "ID", first_name "First Name", last_name "Last Name"
from employees
where department_id = 50
with read only; -- not allowing DML operations

-- SQL Error: ORA-42399: cannot perform a DML operation on a read-only view
update empdept50 set "First Name" = 'LOL';



create or replace view empdept50 as
select employee_id "ID", first_name "First Name", last_name "Last Name"
from employees
where department_id = 50;

update empdept50 set "First Name" = 'LOL';

create or replace view empdept50 as
select employee_id "ID", first_name "First Name", last_name "Last Name"
from employees
where department_id = 50
with check option constraint empdept50_ck; -- can't insert emps other than dept 20.

insert into empdept50
values(300, 'TEST', 'LMAO');

select * from empdept50;

select * from emp_details_view;