-- Create Databse
CREATE DATABASE users;

-- Use databse;
USE useers;

-- Create Table;
CREATE TABLE users(
id INT PRIMARY KEY,
username VARCHAR(50),
password VARCHAR(50),
email VARCHAR(50)
);

-- Insert Data;
INSERT INTO users VALUES
(1,'Manish Yadav','m982105','manish@gmail.com'),
(2,'Ronit Kumar','r934196','ronit@gmail.com');

-- Login query
SELECT *FROM users
WHERE username = 'Manish Yadav' AND password='m982105';

-- user check;
SELECT *FROM users
WHERE username = 'Manish Yadav';

-- email check;
SELECT *FROM users
WHERE email = 'ronit@gmail.com';

-- Pagination
SELECT *FROM users
LIMIT 1;

-- total employee count;
SELECT COUNT(*) AS total_employee FROM users;

