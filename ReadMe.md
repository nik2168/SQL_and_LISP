
### SQL Notes

Types of SQL Commands:
1. DDL (Data Definition Language): create, alter, drop
2. DML (Data Manipulation Language): insert, update, delete
3. DQL (Data Query Language): select
4. TCL (Transaction Control Language): commit, rollback
5. DCL (Data Control Language): grant, revoke

Data Types in Sql:
1. Numeric Types: INT (whole number), FLOAT (decimal), DECIMAL (precise decimal)
2. String Types: VARCHAR (variable length string), CHAR (fixed length string)
3. Date and Time Types: DATETIME (date and time), TIMESTAMP (number of seconds since epoch)
4. Boolean Type: BIT (true or false)
5. Binary Types: BLOB (binary large object), VARBINARY (variable length binary)

Operators in Sql:
1. Arithmetic Operators: +, -, *, /
2. Comparison Operators: =, !=, >, <, >=, <=
3. Logical Operators: AND, OR, NOT
4. Special Operators: IS NULL, IS NOT NULL

### Primary Key : 
A primary key is a column or set of columns that uniquely identify each row in a table. A primary key is used to ensure that each row in a table is unique and can be easily referenced.

### Foreign Key : 
A foreign key is a column or set of columns that references a primary key in another table. A foreign key is used to ensure that each row in a table references a valid row in another table.


## nested sql queries

SELECT * FROM students WHERE age > (SELECT AVG(age) FROM students);

### Constraints in Sql:
1. NOT NULL constraint: Ensures that a column cannot have a null value.

    Example:
    CREATE TABLE students (
        id INT NOT NULL,
        name VARCHAR(255) NOT NULL,
        age INT NOT NULL
    );

    The above example will ensure that the id, name and age of each student cannot be null.

2. UNIQUE constraint: Ensures that all values in a column are unique.

    Example:
    CREATE TABLE students (
        id INT UNIQUE,
        name VARCHAR(255),
        age INT
    );

    The above example will ensure that the id of each student is unique.

3. PRIMARY KEY constraint: A primary key is a combination of NOT NULL and UNIQUE. It identifies each record uniquely.

    Example:
    CREATE TABLE students (
        id INT PRIMARY KEY,
        name VARCHAR(255),
        age INT
    );

    The above example will ensure that the id of each student is unique and not null.

4. FOREIGN KEY constraint: A foreign key is a field in a table that refers to the PRIMARY KEY in another table.

    Example:
    CREATE TABLE students (
        id INT PRIMARY KEY,
        name VARCHAR(255),
        age INT
    );

    CREATE TABLE marks (
        student_id INT,
        mark INT,
        FOREIGN KEY (student_id) REFERENCES students(id)
    );

    The above example will ensure that the student_id in the marks table refers to a valid id in the students table.

5. CHECK constraint: Ensures that the data in a column satisfies a specific condition.

    Example:
    CREATE TABLE students (
        id INT,
        name VARCHAR(255),
        age INT,
        CHECK (age > 18)
    );

    The above example will ensure that the age of each student is greater than 18.

6. DEFAULT constraint: Sets a default value for a column if no value is specified.

    Example:
    CREATE TABLE students (
        id INT,
        name VARCHAR(255),
        age INT DEFAULT 18
    );

    The above example will set the age of each student to 18 if no value is specified.

7. INDEX constraint: Indexes improve the speed of queries by providing a quick way to locate specific data.

    Example:
    CREATE INDEX idx_name
    ON students (name);

    The above example will create an index on the name column of the students table.

### views in sql

CREATE VIEW student_view AS
SELECT id, name, age
FROM students;

### Clauses in SQL :
1. WHERE Clause: Used to filter records in a query.
2. FROM Clause: Used to specify the table to retrieve data from.
3. GROUP BY Clause: Used to group the result-set by one or more columns.
4. HAVING Clause: Used to filter groups in a query.
5. ORDER BY Clause: Used to sort the result-set in ascending or descending order.
6. LIMIT/OFFSET Clause: Used to specify the number of records to return.


### Aggregate Fn in SQL;
1. AVG() : Returns the average value of a numeric column.
2. COUNT() : Returns the number of rows in a table.
3. MAX() : Returns the maximum value in a column.
4. MIN() : Returns the minimum value in a column.
5. SUM() : Returns the sum of all values in a column.

## Practice 
CREATE TABLE IF NOT EXISTS payData(
customer_id  SMALLINT UNIQUE PRIMARY KEY AUTO_INCREMENT,
customer VARCHAR(30),
payMODE VARCHAR(30),
city VARCHAR(30)
);


INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(1, "Jagdeep", "UPI", "Goa");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(2, "Nik", "Cash", "Tokyo");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(3, "Sam", "Apple Pay", "Delhi");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(4, "William", "Netflix Pay", "Singapore");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(5, "Bilu", "UPI", "Manali");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(6, "Tony", "Apple Pay", "Lahore");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(7, "Riya", "Cash", "Goa");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(8, "Rambo", "Card", "Kashmir");

SELECT payMODE, COUNT(payMODE) FROM payData GROUP BY payMODE; -> will group all the payMode and print their payMode count accordingly


### Order of using clause
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;


### Example Queries for Clauses in SQL:

1. **WHERE Clause**: Used to filter records based on a condition.
    ```sql
    SELECT * 
    FROM students 
    WHERE age > 20;
    ```
    *Explanation*: This query retrieves all records from the `students` table where the age is greater than 20.

2. **FROM Clause**: Specifies the table to retrieve data from.
    ```sql
    SELECT name, age 
    FROM students;
    ```
    *Explanation*: This query retrieves the `name` and `age` columns from the `students` table.

3. **GROUP BY Clause**: Groups rows that have the same values in specified columns.
    ```sql
    SELECT department, COUNT(*) 
    FROM students 
    GROUP BY department;
    ```
    *Explanation*: This query counts the number of students in each department by grouping rows based on the `department` column.

4. **HAVING Clause**: Filters groups based on a condition.
    ```sql
    SELECT department, AVG(age) 
    FROM students 
    GROUP BY department 
    HAVING AVG(age) > 21;
    ```
    *Explanation*: This query calculates the average age of students in each department and filters the results to include only departments where the average age is greater than 21.

5. **ORDER BY Clause**: Sorts the result set in ascending or descending order.
    ```sql
    SELECT * 
    FROM students 
    ORDER BY age DESC;
    ```
    *Explanation*: This query retrieves all records from the `students` table and sorts them in descending order by age.

6. **LIMIT Clause**: Limits the number of rows returned by a query.
    ```sql
    SELECT * 
    FROM students 
    LIMIT 5;
    ```
    *Explanation*: This query retrieves the first 5 rows from the `students` table.

7. **OFFSET Clause**: Skips a specified number of rows before starting to return rows.
    ```sql
    SELECT * 
    FROM students 
    LIMIT 5 OFFSET 10;
    ```
    *Explanation*: This query skips the first 10 rows and retrieves the next 5 rows from the `students` table.


### Update cmds in Sql:
1. UPDATE table_name
   SET column1 = value1, column2 = value2
   WHERE condition;

2. UPDATE table_name SET age = age + 1;   -- will increment the age of all by one
3. UPDATE table_name SET marks = 42 WHERE student_id = 3;


### Delete cmds in Sql:
1. DELETE FROM table_name WHERE condition;



### joins in sql:
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN


### INNER JOIN:

SELECT *
FROM table1
INNER JOIN table2
ON table1.column1 = table2.column2;


### LEFT JOIN:

SELECT *
FROM table1
LEFT JOIN table2
ON table1.column1 = table2.column2;


### RIGHT JOIN:

SELECT *
FROM table1
RIGHT JOIN table2   
ON table1.column1 = table2.column2;

# Commands

1. CREATE DATABASE college;                                 - Will create a new database

2. USE college;                                             - Switches to the college database

3. CREATE TABLE students (                                   - Creates a new table named students with specified columns
       id INT PRIMARY KEY,
       name VARCHAR(50),
       age INT
   );

4. INSERT INTO students (rollno, name, age) VALUES (1, 'John', 20), (2, 'Jane', 22);             - Adds a new record to students table

5. SELECT * FROM students;                                  - Retrieves all records from students table

6. UPDATE students                                           - Updates age for student with id 1
   SET age = 21 
   WHERE id = 1;

7. DELETE FROM students                                      - Removes the student record with id 1
   WHERE id = 1;

8. ALTER TABLE students                                      - Adds a new column 'email' to students table
   ADD email VARCHAR(100);

9. DROP TABLE students;                                      - Deletes the entire students table

10. DROP DATABASE college;                                   - Deletes the entire college database

11. SELECT DISTINCT department                               - Shows unique department values
    FROM students;

12. SELECT * FROM students                                   - Retrieves students over 20, sorted by name
    WHERE age > 20 
    ORDER BY name ASC;

13. SELECT COUNT(*)                                          - Counts total number of student records
    FROM students;

14. SELECT department, AVG(age)                              - Average age by department
    FROM students 
    GROUP BY department;

15. CREATE INDEX idx_name                                    - Creates an index on the name column
    ON students(name);



### Examples of Complex Integrity Constraints Using Triggers

## Example 1: Enforce Salary Cap Based on Job Role
-- Ensure that no employee's salary exceeds 100,000 if their role is "Junior".

CREATE TRIGGER check_salary
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
   IF NEW.Role = 'Junior' AND NEW.Salary > 100000 THEN
      SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'Salary exceeds limit for Junior role';
   END IF;
END;

