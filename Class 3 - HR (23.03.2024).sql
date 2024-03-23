select upper(first_name), lower(last_name), salary -- lower()
from employees
where first_name = initcap('Payam');

select upper(first_name), upper(last_name), salary
from employees
where upper(first_name) = 'PAYAM';

select concat(upper(first_name), ' ') || upper(last_name), salary --concat can take only 2 params
from employees
where upper(first_name) = 'PAYAM';

select substr(first_name, 2, 3), salary -- starting character position and length of characters -- result 'aya'
from employees
where first_name = initcap('Payam');

select first_name, instr(first_name, upper('A')), salary
from employees
where instr(first_name, upper('A')) = 1; --where first_name like 'A%';

select first_name, instr(first_name, upper('A')), salary, rpad(first_name, 6, '*') -- rpad/lpa -- length = 6, extra chars will be truncated, less than 6 will be filled with third param
from employees
where first_name like 'A%';

select * 
from employees 
where substr(job_id, 1, 2) = 'IT';


select first_name,job_id,concat(substr(first_name, 2, 2), lower(substr(job_id, 1,2))) as "ID"
from employees
order by first_name;




