CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee VALUES
(1, 'Manish', 30000),
(2, 'Rahul', 50000),
(3, 'Priya', 70000),
(4, 'Neha', 40000);

SELECT *FROM employee;
SELECT name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);

