desc departments;
desc employees;

insert into departments
values(1, 'JEE', null, null);

insert into departments(department_id, department_name, manager_id)
values(2, 'JEE59', 101);

insert into employees(employee_id, first_name, last_name, email, hire_date, job_id, department_id)
values(1, 'Shabab', 'Ahmed', 'YOLO', TO_DATE('01/01/2024', 'DD/MM/YYYY'), 'IT_PROG', 2);

rollback;

commit;

select * from departments;

select * from employees order by employee_id;