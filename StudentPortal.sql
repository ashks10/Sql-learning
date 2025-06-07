CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS company;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1, "Ashish kumar singh", 24);
INSERT INTO student VALUES(2, "Aman" , 22);

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;