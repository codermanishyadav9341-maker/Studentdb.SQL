
-- Create database employeedb;
CREATE DATABASE employeedb;

-- use database;
USE employeedb;

-- Create table
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
department VARCHAR(100),
salary DECIMAL(10,2)
);

-- Data Insert;
INSERT INTO employee VALUES
(1,'Manish Yadav','IT',75000.500),
(2,'Ronit kumar','IT',45000),
(3,'Rahul kumar','HR',35000),
(4,'Nitish Kumar','HR',25000),
(5,'Ankit kumar','IT',40000);

-- Result display;
SELECT *FROM employee;

-- Salary 5000 >;
SELECT *FROM employee
WHERE salary > 50000;

-- Filter department;
SELECT *FROM employee
WHERE department = 'IT';

-- higest salary;
SELECT *FROM employee
ORDER BY salary DESC 
LIMIT 2;

-- Count department wise employee;
SELECT department , count(*) AS total_employee FROM employee
GROUP BY department;

-- Department wise Average salary
SELECT department , AVG(salary) AS avg_employee
FROM employee
GROUP BY department;

-- total salary
SELECT SUM(salary) AS total_salary FROM employee;

-- Salary ascending order
SELECT *FROM employee
ORDER BY salary ASC;

-- employee name Start with M;
SELECT *FROM employee
WHERE emp_name LIKE 'M%';

-- Salary Descending order
SELECT *FROM employee
ORDER BY salary DESC;

-- Highest salary
SELECT  MAX(salary) AS highest_Salary FROM employee;


-- employee count department wise;
SELECT COUNT(*) AS total_employee FROM employee;

-- Salary Between 40000  and 55000;

SELECT *FROM employee
WHERE salary BETWEEN 40000 and 55000;

-- Delete table;
DROP TABLE employee;