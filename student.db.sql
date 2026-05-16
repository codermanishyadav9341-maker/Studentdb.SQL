
-- 1Create DataBase
CREATE DATABASE IF NOT EXISTS student_db;

-- 2 DataBase use karna
USE student_db;

--  3.Ctreate a Table
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age int);

--  4 Data Insert
INSERT INTO student(id,name,age) VALUES
(1,'Manish',23),
(2,'Ronit',24);

--  5Table show

SHOW DATABASES;

SELECT *FROM student;



