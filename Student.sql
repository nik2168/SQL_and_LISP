CREATE DATABASE db;

USE db;

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
rollno SMALLINT
);

INSERT INTO student VALUES(1, "Rohan", 3);
INSERT INTO student VALUES(2, "SHALU", 13);

SELECT * FROM student;

INSERT INTO student (name, id, rollno) VALUES ("Nik", 3, 33);   -- used to enter values in any orders

INSERT INTO student (name, id, rollno) VALUES ("Dharambir", 4, 32);   -- used to enter values in any orders