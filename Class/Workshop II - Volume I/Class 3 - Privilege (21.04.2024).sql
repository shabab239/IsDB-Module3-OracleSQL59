create user shabab
identified by yolo;

alter user shabab
identified by yolo2;

grant create session, create table, create sequence, create view
to shabab;


-- role
create role manager;

grant create table, create view
to manager;

grant manager to shabab;


-- obj privilege
grant select
on employees
to public; -- to manager -- to shabab

grant update(department_name, location_id)
on departments
to shabab, manager;

-- give pass along priv
grant select, insert
on departments
to shabab
with grant option;

-- revoke
revoke select, insert
on departments
from shabab;


