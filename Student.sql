
-- Student Table Create

CREATE TABLE student(
     student_id INT PRIMARY KEY,
     student_name VARCHAR(50),
     age INT,
     city VARCHAR(50)
     
     );
     
	 --  student details INSERT
     
     INSERT INTO student VALUES
     (1,'Manish Ydav',22,'Patna'),
     (2,'Ronit Raj',24,'Delhi');
     
     --  Sabhi record dekhata hai
     
     SELECT *FROM student;
     
	--  Shirf Patna walla student
    SELECT *FROM student
    WHERE city = 'Patna';
    
    -- Age 23 se jayada;
    SELECT *FROM student
    WHERE age > 23;
     
     
     --  Stdeunt Details Update;
     UPDATE student
     SET city = 'Mahnar'
     WHERE student_id = 1;
     
     --  Student delete
     DELETE FROM student
     WHERE student_id = 2;
     
      -- verify
      SELECT *FROM student;
     