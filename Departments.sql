-- Database create
CREATE DATABASE departmentdb;

-- use database;
USE departmentdb;

-- Department Table create
CREATE TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

-- Insert Data;
INSERT INTO department VALUES
(101,'IT'),
(102,'IT'),
(103,'HR'),
(104,'HR'),
(105,'IT');

-- Employee table create;
CREATE TABLE employee(
emp_id INT PRIMARY KEY UNIQUE,
emp_name VARCHAR(50),
salary INT,
dept_id INT
);

-- Insert employee table;
INSERT INTO employee VALUES
(1,'Manish',50000,101),
(2,'Ronit Kumar',40000,102),
(3,'Rahul kumar',5000,103);

-- Inner Join
SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id;

SHOW TABLES;
DROP TABLE department;
SELECT *FROM department;

CREATE TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

-- Insert data
INSERT INTO department VALUES
(101,'IT'),
(102,'IT'),
(103,'HR');

SELECT *FROM department;

-- Inner Join
SELECT e.emp_name, d.dept_name,e.salary
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id;

-- LEFT Join
SELECT *FROM employee e
LEFT JOIN department d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN
SELECT *FROM employee e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

-- IT departments employee
SELECT e.emp_name FROM employee e
JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';


-- Highest Salary
SELECT MAX(salary) AS hightest_salary
FROM employee;

-- Highest salary walla employee
SELECT *FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

-- Average salary
 SELECT AVG(salary) FROM employee;
 
 -- Average salary se jada Salary balla employee;
 SELECT *FROM employee
 WHERE salary = (SELECT AVG(salary) FROM employee);
 
 
 -- Second highest salary
 SELECT MAX(salary) FROM employee
 WHERE salary < (SELECT MAX(salary) FROM employee);
 
 -- HR departments employee
 SELECT emp_name FROM employee
 WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'HR');
 
 -- total employee departments;
 SELECT d.dept_name, COUNT(*) AS total_employee FROM employee e
 JOIN department d
 ON e.dept_id = d.dept_id
 GROUP BY d.dept_name;