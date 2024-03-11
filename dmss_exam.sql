
--Creating table
CREATE TABLE students(
Reg_no VARCHAR(255) PRIMARY KEY,
First_Name VARCHAR(100),
Last_Name VARCHAR(100),
Course VARCHAR(150),
Gender VARCHAR(100),
D_O_B DATE);

INSERT INTO students(Reg_no, First_Name, Last_Name, Course, Gender, D_O_B)
VALUES
('1/2016', 'John', 'Mutuku', 'DCS', 'Male', '1990/06/13'),
('2/2016', 'Steve', 'KipKorir', 'DCS', 'Male', '1985/03/13'),
('3/2016', 'Susan', 'Mutua', 'CIT', 'Female', '1986/11/19'),
('4/2017', 'Steve', 'Kingori', 'DBIT', 'Male', '1978/03/01');

SELECT * FROM students
--Displaying  Reg_no, Last_Name, First_Name
SELECT * FROM students
SELECT Reg_no, Last_Name, First_Name FROM students;

--details of male students
SELECT * 
FROM students 
WHERE Course = 'DCS' AND Gender = 'Male';
SELECT * FROM students;
--total number of students per course
SELECT Course, COUNT(*) AS total_students
FROM students
GROUP BY Course;
--born between 1980 and 1989
SELECT *FROM students
WHERE D_O_B BETWEEN 1970 AND 1980;
--reg_no to Mwangi
UPDATE students
SET Last_Name = 'Mwangi'
WHERE Reg_no = '4/2017';
SELECT * FROM students
--deleting all students records
DELETE FROM students;


