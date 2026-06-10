
-- Create databasse;
DROP TABLE employeeTE;
CREATE DATABASE IF NOT EXISTS company_db;

-- use of database;
USE company_db;


-- Employee table create;
CREATE TABLE employeeTE(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)

);

-- Insert Data;
INSERT INTO employeeTE(name,department,salary,city) VALUES
('Manish Yadav','IT',500000,'Patna'),
('Rahul Kumar','Factory',30000,'Gujarat'),
('Ronit Kumar','HR',25000,'Delhi'),
('Neha Kumari','IT',1000,'Mahnar');

SELECT *FROM employeeTE;


SELECT name , salary FROM employeeTE;


SELECT DISTINCT department FROM employeeTE;

SELECT *FROM employeeTE
WHERE salary > 5000;

SELECT *FROM employeeTE
WHERE  city = 'Delhi';

SELECT *FROM employeeTE
ORDER BY salary ASC;

SELECT *FROM employeeTE
ORDER BY salary DESC;

-- Maximum salary
SELECT MAX(salary) FROM employeeTE;

-- Minimum Salary
SELECT MIN(salary) FROM employeeTE;

-- Average Salary
SELECT AVG(salary) FROM employeeTE;

-- Total salary
SELECT SUM(salary) FROM employeeTE;

-- Employee Count
SELECT COUNT(*) FROM employeeTE;

-- Employee Department wise Count;
SELECT department ,COUNT(*) FROM employeeTE
GROUP BY department;

-- Department Salary wise count;
SELECT salary,COUNT(*) FROM employeeTE
GROUP BY salary;


UPDATE employeeTE
SET city = 'Delhi'
WHERE id = 1;

SELECT *FROM employeeTE;
