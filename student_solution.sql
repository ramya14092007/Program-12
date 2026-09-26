CREATE DATABASE IF NOT EXISTS CollegeDB;

USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Physics');


CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
);

INSERT INTO Faculty (FacultyID, FacultyName)
VALUES
(201, 'Dr. Kumar'),
(202, 'Dr. Priya'),
(203, 'Dr. Ravi');


CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

INSERT INTO Student (StudentID, StudentName, DepartmentID)
VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101),
(1004, 'Nisha', 103);


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

INSERT INTO Course (CourseID, CourseName, FacultyID)
VALUES
(301, 'Database Systems', 201),
(302, 'Data Structures', 202),
(303, 'Mathematics', 203),
(304, 'Physics', 201);


CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID)
VALUES
(1, 1001, 301),
(2, 1001, 302),
(3, 1002, 303),
(4, 1003, 301),
(5, 1004, 304);
