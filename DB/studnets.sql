CREATE DATABASE sms;
use sms;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    course VARCHAR(30)
);

SELECT * FROM students;