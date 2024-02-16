CREATE DATABASE StudentManagement
GO

USE StudentManagement
GO

CREATE TABLE Sex(
SeID CHAR(2),
SeName VARCHAR(10),
CONSTRAINT PK_Sex PRIMARY KEY (SeID)
)
GO

INSERT INTO Sex(SeID, SeName) VALUES ('ML','Male'),
									 ('FM','Female')
GO

CREATE TABLE Campus(
CaID NVARCHAR(8),
CaName NVARCHAR(30),
CaAddress NVARCHAR(100),
CaEmail NVARCHAR(30),
CaHotline NVARCHAR(30),
CONSTRAINT PK_Campus PRIMARY KEY (CaID)
)
GO

INSERT INTO Campus(CaID,CaName,CaAddress,CaEmail,CaHotline) VALUES ('','','','',''),
																   ('','','','','')
GO

CREATE TABLE Subject(
SuID CHAR(6),
SuName NVARCHAR(30),
SuNoCredit INT,
SuDes TEXT,
CONSTRAINT PK_Subject PRIMARY KEY (SuID)
)
GO

INSERT INTO Subject(SuID,SuName,SuNoCredit,SuDes) VALUES ('','','',''),
														 ('','','','')
GO

CREATE TABLE Major(
MaID NVARCHAR(3),
MaName NVARCHAR(100),
CONSTRAINT PK_Major PRIMARY KEY (MaID)
)
GO

INSERT INTO Major(MaID,MaName) VALUES ('IT', 'Information Technology'),
									  ('ES', 'English Studies'),
									  ('JP', 'Japanese Studies'),
									  ('KR', 'Korean Studies'),
									  ('BA', 'Business Adminstration')
GO

CREATE TABLE Specialization(
SpID NVARCHAR(3),
SpName NVARCHAR(30),
MaID NVARCHAR(3),
CONSTRAINT PK_Specialization PRIMARY KEY (SpID),
CONSTRAINT FK_Specialization FOREIGN KEY (MaID) REFERENCES Major(MaID)
)
GO

INSERT INTO Specialization(SpID,SpName,MaID) VALUES ('FIN', 'Finance','BA'),
													('HM', 'Hotel management','BA'),
													('IB', 'International Business','BA'),
													('MC', 'Multimedia Communication','BA'),
													('MKT', 'Digital Marketing','BA'),
													('TM', 'Tourism and Travel Management','BA'),
													('EN', 'English Studies','ES'),
													('AI', 'Artificial Intelligence','IT'),
													('GD', 'Digital Art & Design','IT'),
													('IA', 'Information Assurance','IT'),
													('IoT','Internet of Things','IT'),
													('IS', 'Information System','IT'),
													('SE', 'Software Engineering','IT'),
													('JP', 'Japanese Studies','JP'),
													('KR', 'Korean Studies','KR')
GO

CREATE TABLE Curriculum(
CuID CHAR(10),
CuName NVARCHAR(100),
CuDes TEXT,
CONSTRAINT PK_Curriculum PRIMARY KEY (CuID)
)
GO

INSERT INTO Curriculum(CuID,CuName,CuDes) VALUES ('','',''),
												 ('','','')
GO

CREATE TABLE CurriculumDetail(
CDID INT IDENTITY,
SuID CHAR(6),
CuID CHAR(10),
CDSemester int,
CONSTRAINT PK_CurriculumDetail PRIMARY KEY (CDID),
CONSTRAINT FK_CurriculumDetail_Subject FOREIGN KEY (SuID) REFERENCES Subject(SuID),
CONSTRAINT FK_CurriculumDetail_Curriculum FOREIGN KEY (CuID) REFERENCES Curriculum(CuID)
)
GO

INSERT INTO CurriculumDetail(SuID,CuID,CDID) VALUES ('','',''),
													('','','')
GO

CREATE TABLE Student(
StID CHAR(8), 
StFName NVARCHAR(30),
StLName NVARCHAR(30),
StSex CHAR(2),
StEmail NVARCHAR(30),
CaID NVARCHAR(8),
SpID NVARCHAR(3),
StSemester INT NOT NULL,
CONSTRAINT PK_Student PRIMARY KEY (StID),
CONSTRAINT FK_StudentSex FOREIGN KEY (StSex) REFERENCES Sex(SeID),
CONSTRAINT FK_StudentCampus FOREIGN KEY (CaID) REFERENCES Campus(CaID),
CONSTRAINT FK_StudentSpecialization FOREIGN KEY (SpID) REFERENCES Specialization(SpID)
)
GO

INSERT INTO Student(StID, StFName, StLName, StSex, StEmail, CaID, SpID, StSemester) VALUES ('','','','','','','',''),
																						   ('','','','','','','','')
GO

--USE master
--GO

--DROP DATABASE StudentManagement
--GO
