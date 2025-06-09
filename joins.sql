CREATE DATABASE golden;
USE golden;

CREATE TABLE mixture(
	student_id INT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE udemy(
	student_id INT PRIMARY KEY,
    course VARCHAR(20)
);

INSERT INTO mixture
(student_id , name)
VALUES 
(101 , "adam"),
(102 , "bob"),
(103 , "Casey");

INSERT INTO udemy
(student_id , course)
VALUES
(102 , "English"),
(105 , "Math"),
(103 , "Science"),
(107 , "Computer Science");


-- inner join
SELECT * FROM mixture as m
INNER JOIN udemy as u
ON m.student_id = u.student_id;

-- left join
SELECT * FROM mixture
LEFT JOIN udemy
ON mixture.student_id = udemy.student_id;

-- right join
SELECT * FROM mixture
RIGHT JOIN udemy
ON mixture.student_id = udemy.student_id;

-- full join ( uses UNION )
SELECT * FROM mixture
LEFT JOIN udemy
ON mixture.student_id = udemy.student_id
UNION
SELECT * FROM mixture
RIGHT JOIN udemy
ON mixture.student_id = udemy.student_id;

