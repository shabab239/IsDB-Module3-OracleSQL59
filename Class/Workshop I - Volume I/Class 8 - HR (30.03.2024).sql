-- ORDER OF THE TABLE DOES NOT MATTER
select FIRST_NAME, DEPARTMENT_NAME, JOB_TITLE, COUNTRY_NAME, REGION_NAME
from employees
natural join departments
natural join jobs
natural join locations
natural join countries
natural join regions;


-- ORDER OF THE TABLE MATTERS
select FIRST_NAME, DEPARTMENT_NAME, START_DATE, CITY, REGION_NAME
from employees
join departments using (department_id)
join jobs using (job_id)
join job_history using (job_id)
join locations using (location_id)
join countries using (country_id)
join regions using (region_id);

-- USING ALIASES
select E.FIRST_NAME, D.DEPARTMENT_NAME, JH.START_DATE, L.CITY, C.COUNTRY_NAME, R.REGION_NAME
from employees E
join departments D using (department_id)
join jobs J using (job_id)
join job_history JH using (job_id)
join locations L using (location_id)
join countries C using (country_id)
join regions R using (region_id);


select L.city, D.department_name
from locations L
join departments D using (location_id)
where location_id = 1400;


