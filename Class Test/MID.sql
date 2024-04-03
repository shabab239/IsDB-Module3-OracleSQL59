-- Question 1: Show first_name, salary of employees whose name starts with A
SELECT first_name "First Name", salary "Salary"
FROM employees
WHERE first_name LIKE 'A%';

-- Question 2: Show first name, salary, salary with bonus (30%)
SELECT first_name "First Name", salary "Salary", (salary + salary * 30 / 100) "Salary with Bonus (30%)"
FROM employees;

-- Question 3: Show Full Name, salary where salary is more than 2500
SELECT first_name || ' ' || last_name "Full Name", salary "Salary"
FROM employees
WHERE salary > 2500;

-- Question 4: Show Full Name, salary, annual salary in ascending order
SELECT first_name || ' ' || last_name "Full Name", salary "Salary", (salary * 12) "Annual Salary"
FROM employees
ORDER BY "Annual Salary";


