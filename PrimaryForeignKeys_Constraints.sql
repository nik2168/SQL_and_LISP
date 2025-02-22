CREATE DATABASE IF NOT EXISTS MCA;

USE MCA;

CREATE TABLE IF NOT EXISTS class(
id INT CHECK (id <= 100),
name VARCHAR(30),
rollno INT UNIQUE,
PRIMARY KEY(id, name), -- we can make combination of two key as a primary key
fees INT DEFAULT 25000,
CONSTRAINT fees_check CHECK (fees >= 1000 AND rollno <= 100) -- can add set of rules u know
); 

INSERT INTO class (id, name, rollno) VALUES(4, "Jack", 101); -- by default the fees will be 25k

SELECT * FROM class;