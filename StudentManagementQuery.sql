CREATE DATABASE StudentManagement
GO

USE StudentManagement
GO

-- Create Campus table
CREATE TABLE Campus(
CaID NVARCHAR(8), -- The Campus ID is declared as a String type that can be written in Vietnamese
CaName NVARCHAR(30), -- The Campus Name is declared as a String type that can be written in Vietnamese
CaAddress NVARCHAR(100), -- The Campus Address is declared as a String type that can be written in Vietnamese
CaEmail NVARCHAR(30), -- The Email of Campus is declared as a String type that can be written in Vietnamese
CaHotline NVARCHAR(30), -- The Hotline of Campus is declared as a String type that can be written in Vietnamese
CONSTRAINT PK_Campus PRIMARY KEY (CaID) -- Add primary key condition PK_Campus by CaID
)
GO
-- Add data for campus version
INSERT INTO Campus(CaID,CaName,CaAddress,CaEmail,CaHotline) VALUES ('FUHN','Ha Noi','Hoa Lac Hi-Tech Park, Km29 Thang Long Avenue, Thach That District, Hanoi','tuyensinhfpt@gmail.com','024 7300 6800'),
																   ('FUQN','Quy Nhon','An Phu Thinh new urban area (in Dong Da ward and Nhon Binh ward)','Qnuni@fe.edu.vn','0256 7300 999'),
																   ('FUDN','Đa Nang','FPT Da Nang urban area, Hoa Hai Ward, Ngu Hanh Son District, Da Nang City','dnuni@fe.edu.vn','0236 730 0999'),
																   ('FUHCM','Ho Chi Minh','No. 5 Nguyen Gia Thieu, District 3, Ho Chi Minh City (FSB Institute of Management and Technology facility)','daihoc.hcm@fpt.edu.vn','028 7300 5588'),
																   ('FUCT','Can Tho','Rau Ram Bridge, Area 6, extended Nguyen Van Cu, An Binh ward, Ninh Kieu district, city. Can Tho','fptu.cantho@fe.edu.vn','0292 7773636')
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
CONSTRAINT FK_SpecializationMajor FOREIGN KEY (MaID) REFERENCES Major(MaID),
)
GO
-- Create a curriculum table
CREATE TABLE Curriculum(
CuID NVARCHAR(11), -- Declare the ID of the training program as a String that can be written in Vietnamese
CuName NVARCHAR(100), -- Declare the Name of the training program as a String that can be written in Vietnamese
SpID NVARCHAR(3), -- Declare the ID of the major as a String that can be written in Vietnamese
CONSTRAINT PK_Curriculum PRIMARY KEY (CuID), -- Add primary key condition PK_Curriculum by CuID
CONSTRAINT FK_CurriculumSpecialization FOREIGN KEY (SpID) REFERENCES Specialization(SpID), -- Add primary key condition FK_CurriculumSpecialization by SpID
)
GO
-- Add data for the curriculum table
INSERT INTO Curriculum(CuID,CuName,SpID) VALUES 
('BIT_SE_18A','Bachelor Program of Information Technology, Software Engineering major for exemption from preparatory English lessons','SE'),
('BIT_SE_18B','Bachelor Program of Information Technology, Software Engineering major for level 4-6 of the Preparatory English period','SE'),
('BIT_SE_18C','Bachelor Program of Information Technology, Software Engineering major for level 2-3 of the Preparatory English period','SE'),
('BIT_SE_18D','Bachelor Program of Information Technology, Software Engineering major for level 1 of the Preparatory English period','SE'),

('BIT_IS_18A','Bachelor Program of Information Technology, Information System major for exemption from preparatory English lessons','IS'),
('BIT_IS_18B','Bachelor Program of Information Technology, Information System major for level 4-6 of the Preparatory English period','IS'),
('BIT_IS_18C','Bachelor Program of Information Technology, Information System major for level 2-3 of the Preparatory English period','IS'),
('BIT_IS_18D','Bachelor Program of Information Technology, Information System major for level 1 of the Preparatory English period','IS'),

('BIT_IoT_18A','Bachelor Program of Information Technology, Internet of Things major for exemption from preparatory English lessons','IoT'),
('BIT_IoT_18B','Bachelor Program of Information Technology, Internet of Things major for level 4-6 of the Preparatory English period','IoT'),
('BIT_IoT_18C','Bachelor Program of Information Technology, Internet of Things major for level 2-3 of the Preparatory English period','IoT'),
('BIT_IoT_18D','Bachelor Program of Information Technology, Internet of Things major for level 1 of the Preparatory English period','IoT'),

('BIT_IA_18A','Bachelor Program of Information Technology, Information Assurance major for exemption from preparatory English lessons','IA'),
('BIT_IA_18B','Bachelor Program of Information Technology, Information Assurance major for level 4-6 of the Preparatory English period','IA'),
('BIT_IA_18C','Bachelor Program of Information Technology, Information Assurance major for level 2-3 of the Preparatory English period','IA'),
('BIT_IA_18D','Bachelor Program of Information Technology, Information Assurance major for level 1 of the Preparatory English period','IA'),

('BIT_GD_18A','Bachelor Program of Information Technology, Digital Art & Design major for exemption from preparatory English lessons','GD'),
('BIT_GD_18B','Bachelor Program of Information Technology, Digital Art & Design major for level 4-6 of the Preparatory English period','GD'),
('BIT_GD_18C','Bachelor Program of Information Technology, Digital Art & Design major for level 2-3 of the Preparatory English period','GD'),
('BIT_GD_18D','Bachelor Program of Information Technology, Digital Art & Design major for level 1 of the Preparatory English period','GD'),

('BIT_AI_18A','Bachelor Program of Information Technology, Artificial Intelligence major for exemption from preparatory English lessons','AI'),
('BIT_AI_18B','Bachelor Program of Information Technology, Artificial Intelligence major for level 4-6 of the Preparatory English period','AI'),
('BIT_AI_18C','Bachelor Program of Information Technology, Artificial Intelligence major for level 2-3 of the Preparatory English period','AI'),
('BIT_AI_18D','Bachelor Program of Information Technology, Artificial Intelligence major for level 1 of the Preparatory English period','AI'),

('BBA_TM_18A','Bachelor Program of Business Adminstration, Tourism and Travel Management for exemption from preparatory English lessons','TM'),
('BBA_TM_18B','Bachelor Program of Business Adminstration, Tourism and Travel Management for level 4-6 of the Preparatory English period','TM'),
('BBA_TM_18C','Bachelor Program of Business Adminstration, Tourism and Travel Management for level 2-3 of the Preparatory English period','TM'),
('BBA_TM_18D','Bachelor Program of Business Adminstration, Tourism and Travel Management for level 1 of the Preparatory English period','TM'),

('BBA_MKT_18A','Bachelor Program of Business Adminstration, Digital Marketing for exemption from preparatory English lessons','MKT'),
('BBA_MKT_18B','Bachelor Program of Business Adminstration, Digital Marketing for level 4-6 of the Preparatory English period','MKT'),
('BBA_MKT_18C','Bachelor Program of Business Adminstration, Digital Marketing for level 2-3 of the Preparatory English period','MKT'),
('BBA_MKT_18D','Bachelor Program of Business Adminstration, Digital Marketing for level 1 of the Preparatory English period','MKT'),

('BBA_MC_18A','Bachelor Program of Business Adminstration, Multimedia Communication for exemption from preparatory English lessons','MC'),
('BBA_MC_18B','Bachelor Program of Business Adminstration, Multimedia Communication for level 4-6 of the Preparatory English period','MC'),
('BBA_MC_18C','Bachelor Program of Business Adminstration, Multimedia Communication for level 2-3 of the Preparatory English period','MC'),
('BBA_MC_18D','Bachelor Program of Business Adminstration, Multimedia Communication for level 1 of the Preparatory English period','MC'),

('BBA_IB_18A','Bachelor Program of Business Adminstration, International Business for exemption from preparatory English lessons','IB'),
('BBA_IB_18B','Bachelor Program of Business Adminstration, International Business for level 4-6 of the Preparatory English period','IB'),
('BBA_IB_18C','Bachelor Program of Business Adminstration, International Business for level 2-3 of the Preparatory English period','IB'),
('BBA_IB_18D','Bachelor Program of Business Adminstration, International Business for level 1 of the Preparatory English period','IB'),

('BBA_HM_18A','Bachelor Program of Business Adminstration, Hotel management for exemption from preparatory English lessons','HM'),
('BBA_HM_18B','Bachelor Program of Business Adminstration, Hotel management for level 4-6 of the Preparatory English period','HM'),
('BBA_HM_18C','Bachelor Program of Business Adminstration, Hotel management for level 2-3 of the Preparatory English period','HM'),
('BBA_HM_18D','Bachelor Program of Business Adminstration, Hotel management for level 1 of the Preparatory English period','HM'),

('BBA_FIN_18A','Bachelor Program of Business Adminstration, Finance for exemption from preparatory English lessons','FIN'),
('BBA_FIN_18B','Bachelor Program of Business Adminstration, Finance for level 4-6 of the Preparatory English period','FIN'),
('BBA_FIN_18C','Bachelor Program of Business Adminstration, Finance for level 2-3 of the Preparatory English period','FIN'),
('BBA_FIN_18D','Bachelor Program of Business Adminstration, Finance for level 1 of the Preparatory English period','FIN'),

('BES_EN_18A','Bachelor Program of English Studies, English Studies for exemption from preparatory English lessons','EN'),
('BES_EN_18B','Bachelor Program of English Studies, English Studies for level 4-6 of the Preparatory English period','EN'),
('BES_EN_18C','Bachelor Program of English Studies, English Studies for level 2-3 of the Preparatory English period','EN'),
('BES_EN_18D','Bachelor Program of English Studies, English Studies for level 1 of the Preparatory English period','EN'),

('BKR_KR_18A','Bachelor Program of Korean Studies, Korean Studies for exemption from preparatory English lessons','KR'),
('BKR_KR_18B','Bachelor Program of Korean Studies, Korean Studies for level 4-6 of the Preparatory English period','KR'),
('BKR_KR_18C','Bachelor Program of Korean Studies, Korean Studies for level 2-3 of the Preparatory English period','KR'),
('BKR_KR_18D','Bachelor Program of Korean Studies, Korean Studies for level 1 of the Preparatory English period','KR'),

('BJP_JP_18A','Bachelor Program of Japanese Studies, Japanese Studies for exemption from preparatory English lessons','JP'),
('BJP_JP_18B','Bachelor Program of Japanese Studies, Japanese Studies for level 4-6 of the Preparatory English period','JP'),
('BJP_JP_18C','Bachelor Program of Japanese Studies, Japanese Studies for level 2-3 of the Preparatory English period','JP'),
('BJP_JP_18D','Bachelor Program of Japanese Studies, Japanese Studies for level 1 of the Preparatory English period','JP')

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


CREATE TABLE CurriculumDetail(
CDID INT IDENTITY,
SuID CHAR(6),
CuID NVARCHAR(11),
CDSemester int,
CONSTRAINT PK_CurriculumDetail PRIMARY KEY (CDID),
CONSTRAINT FK_CurriculumDetail_Subject FOREIGN KEY (SuID) REFERENCES Subject(SuID),
CONSTRAINT FK_CurriculumDetail_Curriculum FOREIGN KEY (CuID) REFERENCES Curriculum(CuID)
)
GO

INSERT INTO CurriculumDetail(SuID,CuID,CDSemester) VALUES ('OTP101','BIT_SE_18B','0'),
																('','','')
GO

CREATE TABLE Student(
StID CHAR(8), 
StFName NVARCHAR(30),
StLName NVARCHAR(30),
StSex int,
StEmail NVARCHAR(30),
CaID NVARCHAR(8),
StSemester INT NOT NULL,
CuID NVARCHAR(11),
CONSTRAINT PK_Student PRIMARY KEY (StID),
CONSTRAINT FK_StudentCampus FOREIGN KEY (CaID) REFERENCES Campus(CaID),
CONSTRAINT FK_StudentCurriculum FOREIGN KEY (CuID) REFERENCES Curriculum(CuID)
)
GO

INSERT INTO Student(StID, StFName, StLName, StSex, StEmail, CaID, StSemester, CuID) VALUES ('CE180001','A','Nguyen Van','1','ANVCE000001@fpt.edu.vn','','6',''),
																						   ('','','','','','','','')
GO

--DROP TABLE Student
--GO

--USE master
--GO

--DROP DATABASE StudentManagement
--GO
