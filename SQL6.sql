DROP TABLE IF EXISTS employees;

-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

-- Retrieve all data
SELECT * FROM employees;

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) 
VALUES('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
	('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
	('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
	('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
	('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


                           --QUESTIONS


--Q1: Retrieve all employees’ first_name and their departments
SELECT first_name , department FROM employees;

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees
SET salary=salary+(salary*1/10)
WHERE department = 'IT';

SELECT * FROM employees;

--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees
WHERE age>34;

SELECT * FROM employees;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

SELECT * FROM employees;

--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employees
RENAME department TO dept_name;

SELECT * FROM employees;

--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT first_name, last_name,  FROM employees
WHERE joining_date > '2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE employees
ALTER  COLUMN salary  TYPE  INTEGER USING salary::INTEGER;

--Q8: List all employees with their age and salary in descending order of salary.
SELECT first_name , age , salary FROM employees 
ORDER BY salary DESC;

--09: Insert a new employee with following details:
-- ('Raj','Singh','Marketing',60000,'2023-09-15',30)
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) 
       VALUES ('Raj','Singh','Marketing',60000,'2023-09-15',30);

--10: Update age of employee + 1 to to every employee
UPDATE employees
SET age = age + 1;