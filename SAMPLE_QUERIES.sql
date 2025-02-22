CREATE DATABASE IF NOT EXISTS class;

USE class;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Sam", 78, "C", "Pune"),
(102, "William", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi"); 



-- Clauses in sql
SELECT * FROM student WHERE marks > 80;  -- clauses used to have condition while searching in data
SELECT * FROM student WHERE marks < 90 AND marks >= 70;
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi");
SELECT * FROM student WHERE city NOT IN ("DELHI");
SELECT * FROM student LIMIT 3; 
SELECT * FROM student ORDER BY city DESC;  -- ascending and dcending order 


-- Aggregate Functions In SQl
SELECT MAX(marks) FROM student;
SELECT COUNT(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;

-- Group By Clause
SELECT city, count(name) FROM student GROUP BY city; -- counts students from different cities

-- Practice: Write the Query to find avg marks in each city in ascending order.
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city ASC;

SELECT city, COUNT(rollno)
 FROM student
 GROUP BY city
 HAVING MAX(marks) > 90;  -- Having is kind of same as Where but used with group by

-- order of using clause
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;

SELECT DISTINCT city FROM student;