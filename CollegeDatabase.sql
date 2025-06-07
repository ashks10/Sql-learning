CREATE DATABASE university;
USE university;

CREATE TABLE tools(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO tools
(rollno, name , marks , grade , city)
VALUES
(101, "anil" , 78 ,"C" , "Pune"),
(102, "bhumika" , 92 , "A" , "Mumbai"),
(103, "chetan" , 84 , "b" , "Mumbai"),
(104, "dhruv" ,  34 ,"f" , "Delhi"),
(105, "emanuel" , 74 , "C" , "Delhi"),
(106, "farah" , 98 , "A" , "Pune");

SELECT name, marks FROM tools
WHERE marks>70;

-- * is used to read the data of all coulmns
-- where is used for conditionalal choices 

SELECT * FROM tools;

SELECT DISTINCT city FROM tools;

-- distinct used to remove the cloned or repeated things

SELECT * FROM tools WHERE city = "Mumbai" AND marks>90; -- AND operator both conditiions should be satisfied

SELECT * FROM tools WHERE marks+10 > 100;  -- additional (+) operator is used

SELECT * FROM tools WHERE city = "Mumbai" OR marks>90; -- OR operator either of the statement mst be satisfied

SELECT * FROM tools WHERE marks BETWEEN 80 and 90; -- both the marks are inclusive

SELECT * FROM tools WHERE city IN ("Delhi","Mumbai");

SELECT * FROM tools WHERE city NOT IN ("Delhi","Mumbai");

SELECT * FROM tools WHERE marks>70 LIMIT 3; -- limits the output to the 3 value such that its output is 3 values irrespecitve of how high it is

-- order ASC -> ASCENDING ORDER. DESC -> DECENDING ORDER. 

SELECT * FROM tools ORDER BY marks DESC LIMIT 3;
 
 SELECT city , avg(marks)
 FROM tools
 GROUP BY city
 -- ORDER BY city; -- by default orders in ascending order but if we use DESC it will display descending
ORDER BY avg(marks) DESC;

SELECT city , count(rollno)
FROM tools
GROUP BY city
HAVING MAX(marks)>90;

SELECT city 
FROM tools
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks)>90
ORDER BY city ASC;


SET SQL_SAFE_UPDATES=0; -- to bring the sql out of safe mode its usually in it and the data becomes changable once command is run

UPDATE tools
SET grade = "O"
WHERE grade = "A";    -- updates the A grade into O grade of the table

UPDATE tools
SET marks=89
WHERE rollno = 104;   -- updates the marks in the rollno accordingly

UPDATE tools
SET marks = marks +1;  -- adding one mark to each mark to everything

DELETE FROM xxx
WHERE marks<xx;  -- this will delete the particular data be careful while deleteing cant be retrieved

SELECT * FROM tools;
