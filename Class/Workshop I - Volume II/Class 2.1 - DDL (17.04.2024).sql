create table dept(
deptNo number(2),
dName varchar2(14),
loc varchar2(13),
createDate date default sysdate
);

select table_name from user_tables;
desc dept;

--Create table using subquery
create table dept80
as
select employee_id, last_name, salary * 12 ANNSAL, hire_date
from employees
where department_id = 80;

desc dept80;
select * from dept80;

alter table dept80
add test_column varchar2(10) default 'TEST'; 

alter table dept80
modify test_column varchar2(20) default 'TEST2';

alter table dept80
drop (test_column); --drop column test_column;

insert into dept80(employee_id, last_name, annsal, hire_date)
values (999,'OKE',121212,'21-APR-08');

