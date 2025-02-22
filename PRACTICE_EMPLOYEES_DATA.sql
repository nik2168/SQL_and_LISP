CREATE DATABASE IF NOT EXISTS XYZ;

CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
salary INT
);

INSERT employees (id, name, salary) VALUES(1, "adam", 25000), (2, "bob", 30000), (3, "casey", 40000);

SELECT * FROM employees;