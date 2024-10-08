set search_path to "examresultsdb";

SELECT s.StudentID, s.FirstName, s.LastName, er.ExamID, er.examdate, er.Score, er.Grade
FROM
    Students s
    JOIN ExamResults er ON s.StudentID = er.StudentID
    JOIN Exams e ON er.ExamID = e.ExamID;