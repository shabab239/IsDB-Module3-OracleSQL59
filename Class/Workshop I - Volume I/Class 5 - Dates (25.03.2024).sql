select first_name, hire_date
from employees;

select sysdate
from dual;

select sessiontimezone, current_date, current_timestamp
from dual;

select current_date + 1, current_timestamp + 1 -- Add number of days
from dual;

select current_date - 1, current_timestamp - 1 -- Subtracts number of days
from dual;

select current_date - (current_date - 10) -- Number of days
from dual;

select current_date + (1/24)-- Add number of hours
from dual;

select first_name, floor((sysdate - hire_date) / 7) as Weeks
from employees;

select first_name, MONTHS_BETWEEN(SYSDATE, hire_date) as Months
from employees;

select add_months(current_date, -1) -- Add months
from dual;

select next_day(current_date, 'WED')
from dual;

select last_day(current_date) -- Last Day of Month
from dual;

select round(sysdate,'MONTH')
from dual;

select round(sysdate,'YEAR')
from dual;

select trunc(sysdate,'MONTH')
from dual;

select trunc(sysdate,'YEAR')
from dual;

select first_name, to_char(hire_date,'DD-MM-YYYY'), to_char(hire_date,'YYYY-YEAR-Year-MONTH-Month-MON-Mon-Dy-DY-DAY-Day'),
 to_char(hire_date,'Dy "of" Month') --'fmDD-MM-YYYY' fm is optional
from employees;

select first_name, to_char(salary, '$999999.00')
from employees;






