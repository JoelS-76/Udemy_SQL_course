use employees;
SELECT 
	first_name, last_name
FROM
	employees;
    
SELECT
	*
FROM
	employees;
    
SELECT dept_no
FROM departments;

SELECT *
FROM departments;

SELECT *
FROM employees
WHERE first_name = 'Denis';

SELECT *
FROM employees
WHERE first_name = 'Denis' AND gender = 'M';

SELECT *
FROM employees
WHERE last_name = 'Denis' AND (gender = 'M' OR gender = 'F');

SELECT *
FROM employees
WHERE first_name IN ('Cathie', 'Mark', 'Nathan');

SELECT *
FROM employees
WHERE first_name LIKE ('%ar%');

SELECT *
FROM employees
WHERE first_name LIKE ('Mar_');

USE employees;

SELECT * FROM employees
WHERE first_name != 'Mark';

SELECT * FROM employees
WHERE gender = 'F'
AND hire_date >= '2000-01-01';

SELECT gender FROM employees;

SELECT DISTINCT gender FROM employees;

SELECT DISTINCT hire_date FROM employees;


SELECT COUNT(DISTINCT first_name)
FROM employees;

use employees;

SELECT * FROM employees
ORDER BY first_name;



SELECT * FROM employees
ORDER BY emp_no DESC;

SELECT * FROM employees
ORDER BY first_name, last_name;

SELECT * FROM employees
ORDER BY hire_date DESC;

--SELECT column_name(s)
--FROM table_name
--WHERE conditions
--GROUP BY column_name(s)
--ORDER BY column_name(s);

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT COUNT(first_name)
FROM employees
GROUP BY first_name;

SELECT first_name,
COUNT(first_name)
FROM employees
GROUP BY first_name;

SELECT first_name,
COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;