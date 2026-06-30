
-- create database
CREATE DATABASE IF NOT EXISTS student_management_System;

-- database use 
USE student_management_System;

-- create a student table;
CREATE TABLE IF NOT EXISTS student(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT,
gender VARCHAR(50),
email VARCHAR(50) UNIQUE,
phone VARCHAR(50),
address VARCHAR(50)
);

-- create a course table;
CREATE TABLE IF NOT EXISTS course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL,
duration VARCHAR(50),
fee DECIMAL(10,2)
);

-- create a fee table;
CREATE TABLE IF NOT EXISTS fee(
fee_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
total_fee DECIMAL(10,2),
paid_fee DECIMAL(10,2),
due_fee DECIMAL(10,2),
payment_date DATE,
FOREIGN KEY (student_id) REFERENCES student(student_id)
);

