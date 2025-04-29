CREATE DATABASE IF NOT EXISTS schooldata;

USE schooldata;


CREATE TABLE courses(
id INT PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE teachers(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
course_id INT,
FOREIGN KEY(course_id) REFERENCES courses(id)  -- refrence to the courses table using foreign key
ON UPDATE CASCADE
ON DELETE CASCADE
);

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


DROP TABLE teachers;

INSERT INTO courses (id, name) VALUES (1, 'Math'), (2, 'Physics'), (3, 'Chemistry'), (4, 'Biology'), (5, 'English');
INSERT INTO teachers (name, course_id) VALUES ('John Smith', 1), ('Jane Doe', 2), ('Bob Johnson', 3), ('Alice Brown', 4), ('Mike Davis', 5);
INSERT INTO courses  (id, name) VALUES (6, 'DSA');
UPDATE courses
SET id = 9
WHERE id = 2;  -- this will update id of PHYSICS in both teacher and courses table ;

SELECT * FROM courses;
SELECT * FROM teachers;
SELECT * FROM student;


ALTER TABLE teachers 
ADD COLUMN salary INT;  
 -- add a new coloumn salary with null values by default in schema
 
 ALTER TABLE teachers
 DROP COLUMN salary;  
-- yes this one will delete the coloumn with the same name

 ALTER TABLE teachers
 RENAME TO new_name;
 -- raname a table
 
 -- ALTER TABLE teachers CHANGE COLUMN old_name new_name NEW_DATA_TYPE new_Constraints;

 -- ALTER TABLE teachers MODIFY col_name  new_datatype new_constraints;
 
 TRUNCATE TABLE student; -- only delets the data of the selected table not the whole table
 
 -- PRADCTICE QUE :
 ALTER TABLE teachers CHANGE COLUMN name fullname VARCHAR(30); -- change the coloumn name from name to full name for the teachers coloumn
 DELETE FROM student WHERE marks < 80;
 SELECT * FROM student;
 ALTER TABLE student ADD COLUMN grade VARCHAR(10);
 ALTER TABLE student DROP COLUMN grade;
 
 SET SQL_SAFE_UPDATES=0; -- remove safe mode


-- Joins in SQL:
   -- they are used to merge the data just to show not in the actual dataabse, of two table according to some common keys
   
   -- alias -> just a temp name ->  student as s
   
-- 1. INNER JOIN 
   -- here we merge only the common keys data from any two tables
   SELECT *
   FROM teachers as t
   INNER JOIN courses
   ON t.id = courses.id;
   
-- 2. LEFT JOIN
   -- here this return allthe data of left table and only matched data from right table
   
   SELECT * 
   FROM teachers
   LEFT JOIN courses
   ON teachers.id = courses.id;
   
-- 3. RIGHT JOIN
    -- yes opposite of left join only show whole data of right table and matched data of left table
    
    SELECT *
    FROM teachers
    RIGHT JOIN courses
    ON teachers.id = courses.id;
    
-- 4. FULL JOIN
     -- yes return all data like a union or concatinations of both a and b table,
     -- we dont have a keyword full join in mysql thats why we use union keyword between the left and right join statement;
     
	SELECT *
    FROM teachers
    LEFT JOIN courses
    ON teachers.id = courses.id
    UNION
    SELECT *
    FROM teachers
    RIGHT JOIN courses
    ON teachers.id = courses.id;
    
    -- Also we can perform cartain operation like extracting a exclusive right table by using some conditions
	SELECT *
    FROM teachers
    RIGHT JOIN courses
    ON teachers.id = courses.id
    WHERE teachers.id IS NULL;
    
    -- also we can use self join to join a table into itself - "JOIN" keyword with alias table first as a and table first as b
    
    
    
   