USE employees;

SELECT dept_no
FROM departments;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM titles;
SELECT * FROM employees;
-- isolate colums from table
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';


-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- LEFT JOIN
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');
SELECT * FROM current_emp;


SELECT * FROM employees
WHERE hire_date LIKE('%2000%');

SELECT * FROM employees
WHERE emp_no LIKE('1000_');

SELECT * FROM employees
WHERE hire_date >= '2000-01-01'
	AND gender = 'F';
    
    
    
USE sales;

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE customers
CHANGE COLUMN customer_id customer_id INT AUTO_INCREMENT;


INSERT INTO customers (first_name, last_name)
VALUES ('Peter', 'Figaro')
;
SELECT * FROM customers;
use sales;
CREATE TABLE IF NOT EXISTS test (
	numbers	INT(10),
    words 	VARCHAR (10)
);

/*This is a large comment*/
-- small comment --
use employees;
SELECT * FROM EMPLOYEES
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';

use employees;
SELECT * FROM employees
WHERE first_name IS NOT NULL;

SELECT * FROM employees
WHERE first_name IS NULL;

SELECT * FROM departments
WHERE dept_no IS NOT NULL;

USE sales;

DROP TABLE sales;

CREATE TABLE sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

DROP TABLE sales;
DROP TABLE customers;
DROP TABLE items;
DROP TABLE companies;

USE employees;

SELECT * FROM employees
WHERE first_name != 'Mark';