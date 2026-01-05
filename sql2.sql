CREATE TABLE Students (
    student_id int  PRIMARY KEY,
    student_name VARCHAR(100),
    date_of_birth DATE,
    address VARCHAR(200),
    phone VARCHAR(20)
);


CREATE TABLE family_info (
    family_id int  PRIMARY KEY,
    student_id int ,
    father_name VARCHAR(100),
    father_phone VARCHAR(20),
    father_job VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
CREATE TABLE Courses (
    course_id int  PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(200),
    resource VARCHAR(100)
);
CREATE TABLE Classes (
    class_id int  PRIMARY KEY,
    class_code VARCHAR(50),
    room_number VARCHAR(20),
    schedule VARCHAR(100)
);
CREATE TABLE Assignments (
    assignment_id int  PRIMARY KEY,
    assignment_name VARCHAR(100),
    description VARCHAR(200),
    due_date DATE,
    status VARCHAR(10)  
);
INSERT INTO Students VALUES
(1, 'Ali Ahmad', '2005-06-12', 'Amman'),
(2, 'Sara Khaled', '2006-03-20', 'Irbid');


INSERT INTO family_info VALUES
(1, 1, 'Ahmad Ali', '0791234567'),
(2, 2, 'Khaled Sara', '0789876543');

INSERT INTO Courses VALUES
(1, 'Database', 'SQL Basics', 'Book'),
(2, 'Programming', 'C# Basics', 'Slides');

INSERT INTO Classes VALUES
(1, 'DB101', 'Room 5', 'Sun 9-11'),
(2, 'CS102', 'Room 3', 'Mon 10-12');


INSERT INTO Assignments VALUES
(1, 'HW1', 'SQL Assignment', '2025-01-20', 'Pass', 1),
(2, 'HW2', 'C# Assignment', '2025-01-25', 'Failed', 2);


SELECT * FROM Students;

SELECT Students.student_name, family_info.father_name
FROM Students
INNER JOIN family_info
ON Students.student_id = family_info.student_id;


SELECT Students.student_name, Assignments.assignment_name
FROM Students
INNER JOIN Assignments
ON Students.student_id = Assignments.assignment_id
WHERE Assignments.status = 'Pass';



ALTER TABLE Students
ADD email VARCHAR(50);
DELETE FROM Assignments
WHERE assignment_id = 2;