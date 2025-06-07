CREATE DATABASE office;

USE office;

CREATE TABLE office(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT INTO office
(id,name)
VALUES
(1,"Karan"),
(2,"Arjun"),
(103,"Raj");

SELECT*FROM office;
