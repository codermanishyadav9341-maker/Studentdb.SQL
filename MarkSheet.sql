
-- Create database;
CREATE DATABASE Student_db1;

USE Student_db1;

-- Create table
CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
city VARCHAR(50),
course VARCHAR(50),
marks DECIMAL(5,2)
);


-- Insert Data
INSERT INTO students(id , name,age,city,course,marks) VALUES
(1,'Manish Yadav',23,'Patna','Java Developer',89.45),
(2,'Vishal Kumar',22,'Patna','Java Developer',90.75),
(3,'Vivek Kumar',24,'Patna','Java Developer',84.23),
(4,'Ronit kumar',23,'Delhi','10Pass',75.26),
(5,'Rahul Kumar',24,'Mahnar','12Pass',70.21);

-- Display result;
SELECT *FROM Students;

-- Search id;
SELECT *FROM Students
WHERE id = 1;

-- Search by name;
SELECT *FROM Students
WHERE name = 'Manish Yadav';

-- Search by name With LIKE;
SELECT *FROM Students
WHERE name LIKE 'M%';

-- Search by Student from Patna;
SELECT *FROM Students
WHERE city LIKE 'Patna%';


-- Topper Students;
SELECT *FROM Students
ORDER BY marks DESC;

-- Average marks;
SELECT AVG(marks) AS Average_marks FROM Students;

-- Total Students;
SELECT  COUNT(*) AS total_Count FROM Students;

-- Update Students;
UPDATE Students
SET marks = 90
WHERE id = 1;

SELECT *FROM Students;

-- DELETE Students;
DELETE FROM Students
WHERE id = 2;
SELECT *FROM Students;

-- Students city wise count
SELECT city, COUNT(*) AS total_Students FROM Students
GROUP BY city;
