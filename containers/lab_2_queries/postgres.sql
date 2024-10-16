set search_path to "examresultsdb";

SELECT ER.StudentID, S.FirstName, S.LastName, ER.ExamID, ER.ExamDate, ER.Score, ER.Grade
FROM ExamResults ER
    JOIN Students S ON ER.StudentID = S.StudentID;