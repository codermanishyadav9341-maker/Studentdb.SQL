
-- Employee table create
CREATE TABLE employee(
 employee_Id INT PRIMARY KEY,
 employee_name VARCHAR(50),
 employee_age INT,
 employee_depart VARCHAR(50)

 );
 
 --  Employee details INSERT
 
 INSERT INTO employee VALUES
 (101,'Manish Yadav',23,'Developer'),
 (102,'Ronit Jha', 23,'Helper'),
 (103,'Rahul Kumar',22,'Worker');
 
 -- show detaisl-- 
 SELECT *FROM employee;