CREATE DATABASE xyz;
USE xyz;

CREATE TABLE worker(
	id INT PRIMARY KEY,
    name varchar(50),
    salary INT
);

INSERT INTO worker
(id, name, salary)
VALUES 
(1,"Adan",97233),
(2,"SAM",21890),
(3,"Ashish",93890);

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

CREATE TABLE temp2(
	id INT,
    name VARCHAR(50),
    city VARCHAR(20),
    age INT,
    PRIMARY KEY(id , name)  
);

SELECT * FROM temp2;

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000);
    
INSERT INTO emp (id) VALUES (101);

SELECT * FROM emp;
