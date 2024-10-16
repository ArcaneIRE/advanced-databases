-- Active: 1727964969122@@127.0.0.1@5432@postgres
DROP SCHEMA IF EXISTS examresultsdb CASCADE;

CREATE SCHEMA examresultsdb;

set search_path to "examresultsdb";

-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(255) UNIQUE
);

-- Create the Departments table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(255) NOT NULL
);
-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL,
    Professor VARCHAR(255)
);

-- Create the Exams table
CREATE TABLE Exams (
    ExamID INT PRIMARY KEY,
    DeptID INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (DeptID) REFERENCES Departments (DeptID)
);

-- Create the ExamResults table
CREATE TABLE ExamResults (
    RESID INT PRIMARY KEY,
    StudentID INT,
    ExamID INT,
    ExamDate DATE,
    Score DECIMAL(5, 2),
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
    FOREIGN KEY (ExamID) REFERENCES Exams (ExamID)
);