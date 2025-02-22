-- SQL - Subqueries

CREATE DATABASE IF NOT EXISTS subquery;

USE subquery;


CREATE TABLE IF NOT EXISTS subexample(
id INT PRIMARY KEY UNIQUE,
name VARCHAR(30),
marks INT
);

INSERT INTO subexample (id, name, marks) VALUES (1, "SAM", 88), (2, "Nik", 93);
INSERT INTO subexample (id, name, marks) VALUES (3, "Rayan", 58), (4, "John", 73);


SELECT * FROM subexample;

SELECT name, marks 
FROM subexample 
WHERE marks > (SELECT AVG(marks) FROM subexample);  -- here we are dynamically selecting the average marks of students

SELECT name, id
FROM subexample
WHERE id % 2 = 0;

ALTER TABLE subexample ADD city VARCHAR(30);

UPDATE subexample SET city = "GOA" WHERE marks < 80;

SELECT MAX(marks) FROM (SELECT * FROM subexample WHERE city = "DELHI") AS temp;


-- My SQL views - these are the virtual instances of real table to display only specific values to different roles in an organization

CREATE VIEW view1 AS SELECT id, name, marks FROM subexample;

SELECT * FROM view1;