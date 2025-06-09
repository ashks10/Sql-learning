CREATE DATABASE coap;
USE coap;

CREATE TABLE ccmt(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO ccmt
(rollno, name , marks , grade , city)
VALUES
(101, "anil" , 78 ,"C" , "Pune"),
(102, "bhumika" , 92 , "A" , "Mumbai"),
(103, "chetan" , 84 , "b" , "Mumbai"),
(104, "dhruv" ,  34 ,"f" , "Delhi"),
(105, "emanuel" , 74 , "C" , "Delhi"),
(106, "farah" , 98 , "A" , "Pune");

SELECT * FROM ccmt;

SELECT AVG(marks)
FROM ccmt;

SELECT name , marks
FROM ccmt
WHERE marks > 74.6663
ORDER BY marks DESC;

-- sub query (dynamic) automatically updates based on the table updation
SELECT name , marks
FROM ccmt
WHERE marks > (SELECT AVG(marks) FROM ccmt);

-- find names of students with even roll number -- IN used to say isEquals() like in java similarly

SELECT name 
FROM ccmt 
WHERE rollno IN (SELECT rollno FROM ccmt WHERE rollno%2=0);

-- find the max marks from the studens of delhi

SELECT name, marks
FROM ccmt
WHERE marks IN (SELECT MAX(marks) FROM ccmt WHERE city = "delhi");

SELECT MAX(marks)
FROM (SELECT * FROM ccmt WHERE city = "Mumbai") AS temp;

-- view is a virtual table created to show case only not an actual table 

CREATE VIEW view1 AS
SELECT rollno,name,marks FROM ccmt;

SELECT * FROM view1;

DROP VIEW view1;
