-- Question 1
create table emp1281539(
eid number(9) primary key,
ename varchar2(60) not null,
salary number(9),
hire_date date,
address varchar2(200)
);

-- Question 2
alter table emp1281539
add (department_id number(9), dept_name varchar2(70));

-- Question 3
insert into emp1281539
values(1, 'Shabab Ahmed', 20000, '01-JAN-2020', 'Kallyanpur, Dhaka', 100, 'IT');
insert into emp1281539
values(2, 'Skip Khan', 20000, '11-MAR-2020', 'Mipur, Dhaka', 102, 'MKT');
insert into emp1281539
values(3, 'Samin Ahmed', 20000, '21-OCT-2020', 'Motijheel, Dhaka', 100, 'IT');
insert into emp1281539
values(4, 'Sameer Hasan', 35000, '21-DEC-2020', 'Savar, Dhaka', 80, 'SALES');
insert into emp1281539
values(5, 'Ahamad Ullah', 40000, '21-JUN-2020', 'Kakrail, Dhaka', 80, 'SALES');

-- Question 4
create view emp_dept_80 as
select ename, dept_name, salary
from emp1281539
where department_id = 80;

-- Question 5
create sequence generic_id_seq
start with 1
increment by 1
nocache
nocycle;

-- Question 6
insert into emp1281539(eid, ename, salary, department_id, dept_name)
select e.employee_id, e.first_name, e.salary, d.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
where d.department_id = 80;


