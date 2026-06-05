
-- Craete database
CREATE DATABASE schooldb;

-- use databse;
USE schooldb;

-- Create table

CREATE TABLE student(
  id INT PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(100),
  marks INT 
  );
  
  
  -- Data Insert;
  INSERT INTO student VALUES
  (1,'Manish Yadav','Patna',98),
  (2,'Ronit Kumar','Delhi',85),
  (3,'Rahul kumar','Gujarat',75),
  (4,'Ankit kumar','Bihar',83),
  (5,'Rajesh Kumar','Mahnar',94),
  (6,'Golu kumar','Patna',90),
  (7,'Akash Yadav','Hajipur',88),
  (8,'Rupesh kumar','Mahnar',78),
  (9,'Ankit kumar','Patna',84),
  (10,'Nitish kumar','Mahnar',82);
  
  -- Result display;
  
  SELECT *FROM student;
  
  -- onlr for name  display;
  SELECT name FROM student;
  
  -- only for marks;
  SELECT marks FROM student;
  
  -- onlr for Patna student;
  SELECT *FROM student
  WHERE city = 'Patna';
  
  -- Highest marks;
  SELECT *FROM student
  WHERE marks >85;
  
  -- Update city;
  
  UPDATE student
  SET city = 'Pune'
  WHERE id = 6;
  
  -- Delete id;
  
  DELETE FROM student
  WHERE id = 6;
  
  -- total studnet count;
  
SELECT COUNT(*) FROM student;

-- find highest marks find;
SELECT MAX(marks) FROM student;
  
  -- find lowest marks;
  SELECT MIN(marks) FROM student;
  
  -- Average marks;
  
  SELECT AVG(marks) FROM student;
  
  -- Descending order;
  SELECT *FROM student
  ORDER BY marks DESC;
  
  -- Start with M letter;
  SELECT *FROM student
  WHERE name LIKE 'M%';
  
  -- end with t letter;
  SELECT *FROM student
  WHERE name LIKE '%v';
  
  -- LIMIT;
  SELECT *FROM student
  LIMIT 3;
  
  -- COUNT Patna studnet;
  SELECT COUNT(*) FROM student
  WHERE city = 'Patna';
  
  -- Marks between 70 and 90;
  SELECT *FROM student
  WHERE marks BETWEEN 70 and 90;
  
  SELECT DISTINCT city FROM student;
  
 


