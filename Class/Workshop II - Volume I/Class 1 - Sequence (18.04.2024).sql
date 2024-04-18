select *
from user_tab_columns
where table_name = 'EMPLOYEES';

select *
from user_tab_columns
where table_name = 'SALES_REPS';

select *
from user_constraints
where table_name = 'EMPLOYEES';

--sequence
create sequence sales_reps_id
start with 300
increment by 10
maxvalue 100000
nominvalue
nocache
nocycle;

select sales_reps_id.nextval
from dual;

select sales_reps_id.currval
from dual;

insert into sales_reps
values(sales_reps_id.nextval, 'SEQUENCE TEST', 12000, 0.2);

select * from sales_reps order by id desc;

commit;

alter table sales_reps
modify id default sales_reps_id.nextval;

insert into sales_reps(name, salary, commission_pct)
values('DEFAULT SEQUENCE TEST', 11000, null);

insert into sales_reps
values(default, 'DEFAULT SEQUENCE TEST 3', 10000, null);

alter sequence sales_reps_id
increment by 1
maxvalue 999999;

commit;

select * from all_sequences;
select * from user_sequences;
