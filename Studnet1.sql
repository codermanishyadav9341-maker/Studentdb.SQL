
CREATE TABLE Student1(
id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
age INT
);

--  Student details Insert
INSERT INTO Student1 VALUES
(1,'Manish Yadav','Patna',23),
(2,'Ronit Jha','Delhi',23),
(3,'Rahul Raj','Mahnar',22),
(4,'Neha Kumari','Mahnar',15),
(5,'Ankit Kumar','Hajipur',20);

--  Record display
SELECT *FROM Student1;

--  Only for name display
SELECT name FROM Student1;

--  Only Patna Student
SELECT *FROM Student1
WHERE city = 'Patna';

--  Age 20 se above
SELECT *FROM Student1
WHERE age > 20;

--  Age 20 se down
SELECT *FROM Student1
WHERE age < 20;

--  Age Update
UPDATE Student1
SET age = 30
WHERE name = 'Manish Yadav';

--  Display
SELECT *FROM Student1;

-- City Update
UPDATE Student1
SET city = 'Bihar'
WHERE id = 1;

SELECT *FROM Student1;

--  Delete id;
DELETE FROM Student1
WHERE id = 2;
SELECT *FROM Student1;

--  Ascending order

SELECT *FROM Student1
ORDER BY city ASC;

--  Descending Order
SELECT *FROM Student1
ORDER BY name DESC;

-- total student count
SELECT COUNT(*) FROM Student1;

-- Maximum age

SELECT MAX(age) FROM Student1;

-- Minimum age
SELECT MIN(age) FROM Student1;

-- Average Age

SELECT AVG(age) FROM Student1;

-- Name start with M
SELECT *FROM Student1
WHERE name LIKE 'M%';

-- H pee end

SELECT *FROM Student1
WHERE name LIKE '%v';






