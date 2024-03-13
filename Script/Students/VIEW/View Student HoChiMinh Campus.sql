CREATE VIEW VW_Student_HoChiMinh AS
SELECT 
	StID as [Student ID],
	StLName + ' ' + StFName as [Full Name],
	StSex as Sex,
	StEmail as Email,
	StSemester as Semester
FROM Student
WHERE CaID = 'FUHCM' 
GO