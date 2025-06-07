CREATE DATABASE payment;
USE payment;

CREATE TABLE pay(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(10)
);

INSERT INTO pay
(customer_id , customer , mode , city)
VALUES
(101 , "olivia" , "Net banking" , "Portland"),
(102 , "ethan" , "Credit card" , "Miami"),
(103 , "rahul" , "Credit card" , "England"),
(104 , "stuart" , "Net banking" , "Bengaluru"),
(105 , "abuu" , "Debit card" , "Mumbai"),
(106 , "oshuva" , "Net banking" , "Dubai");

SELECT DISTINCT mode FROM payment;

SELECT mode , count(customer) AS total_customers
FROM pay
GROUP BY mode
ORDER BY mode DESC;

SELECT mode
FROM pay
GROUP BY mode;


