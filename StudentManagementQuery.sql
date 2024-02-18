CREATE DATABASE StudentManagement
GO

USE StudentManagement
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

INSERT INTO Campus(CaID,CaName,CaAddress,CaEmail,CaHotline) VALUES ('FUHN','Hòa Lạc','Hoa Lac Hi-Tech Park, Km29 Thang Long Avenue, Thach That District, Hanoi','daihocfpt@fpt.edu.vn','024 7300 6800'),
																   ('FUQN','Quy Nhơn','An Phu Thinh new urban area (in Dong Da ward and Nhon Binh ward)','daihocfpt@fpt.edu.vn','0256 7300 999'),
																   ('FUDN','Đà Nẵng','FPT Da Nang urban area, Hoa Hai Ward, Ngu Hanh Son District, Da Nang City','daihocfpt@fpt.edu.vn','0236 730 0999'),
																   ('FUHCM','Hồ Chí Minh','No. 5 Nguyen Gia Thieu, District 3, Ho Chi Minh City (FSB Institute of Management and Technology facility)','daihocfpt@fpt.edu.vn','028 7300 5588'),
																   ('FUCT','Cần Thơ','Rau Ram Bridge, Area 6, extended Nguyen Van Cu, An Binh ward, Ninh Kieu district, city. Can Tho','daihocfpt@fpt.edu.vn','0292 7773636')
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

CREATE TABLE Curriculum(
CuID NVARCHAR(11),
CuName NVARCHAR(100),
CuDes TEXT,
SpID NVARCHAR(3),
CONSTRAINT PK_Curriculum PRIMARY KEY (CuID),
CONSTRAINT FK_CurriculumSpecialization FOREIGN KEY (SpID) REFERENCES Specialization(SpID),
)
GO

INSERT INTO Curriculum(CuID,CuName,CuDes,SpID) VALUES ('BIT','Bachelor Program of Information Technology','Training Objectives
General objective: Training Bachelor of Information Technology, Digital Art & Design specialty with personality and capacity to meet the needs of society, mastering professional knowledge and practice, being able to organize, implement and promote the creativity in jobs related to the trained specialty, being able to work in the international environment, and laying the foundation to pursue further study and research in Digital Art & Design.',''),

('BEN','Bachelor of English Studies','General objective:
The bachelor is program in English Language aims to train good quality bachelors: with qualities and abilities to meet the actual needs of society; Able to use English fluently with a minimum level equivalent to level 5 according to The Vietnam Six-level of Foreign Language Proficiency Framework or level C1 according to the Common European Framework of Reference for Languages (CEFR) and Chinese with the minimum level is equivalent to HSK4 according to the six-level Chinese Proficiency Test or B2 level according to the Common European Framework of Reference for Languages (CEFR). Students have a strong self-study ability, are capable of self-training and accumulating professional knowledge, qualities, and skills to participate in the study, research at higher levels, or become experts in the field of expertise, flexible working in a domestic and international environment. Depending on the chosen major, students will be able to use Chinese as a second foreign language at a basic or intermediate level; have basic or advanced professional knowledge of languages and cultures; as well as the knowledge and skills necessary to work in fields related to the trained major.',''),

('BBA','Bachelor Program of Business Adminstration','The objective of the Bachelor of Business Administration – Tourism and Travel Management program of FPT University is to train students into specialists in tourism and travel management, tour guides, tour managers and operators. Students will be equipped with all essential knowledge and skills to work in the field of tourism and travel management and in an international working environment or to continue into the next higher level of education.
',''),

('BJP','Bachelor Program of Japanese Studies','The professional objective of the Training program of Japanese Language (hereinafter referred to as the Training program) is to train Japanese Language graduates with political qualities, professional ethics, having an understanding of Japanese culture, mastering knowledge of Japanese language and being able to use Japanese as an effective tool at work. With 3 orientations namely Translation - Interpreting, Hotel & Tourism Management, and Information Technology, students can develop careers in specialized fields and keep up with the development trends towards diversification and specialization of many fields and occupations of the society, meet demand for human resources related to Japanese language of agencies and departments organizations and enterprises in the domestic and foreign environment.
In addition, the Training program always emphasizes on equipping students with foreign language skills through the Preparation English program lasting from 0-1 years depending on the student is level and the output is equivalent to IELTS 6.0. After graduating, students can study and work in international and multicultural environments in different countries.
The training program also aims to provide students with soft skills such as communication, teamwork, critical thinking, entrepreneurial mindset, serious work spirit, dedication, creative thinking, the ability of lifelong learning and fundamental understandings of politics, law, ethics, and scientific methodology. These knowledge and skills will be equipped for students through the courses of Political theory, National Defense Education, etc.
The program also aims to preserve the values and national identity of Vietnam by involving Traditional musical instruments, Vovinam courses in the training program. These values will help deepen students is national pride, bringing difference for learners when working in multicultural environments.',''),

('BKR','Bachelor Program of Korean studies','Training Bachelor of Korean Language with political qualities, professional ethics, having an understanding of Korean culture, master knowledge and language skills to apply fluently in a multilingual and multicultural environment. With 2 combos namely "Economy and Trade Orientation" and "Tourism Orientation", students will be equipped with supplemental knowledge and skills, having solid professional skills, meeting the needs of society and the Vietnamese economy which is developing and under the integration process into the global economy.',''),

('PEN','Preparation English','The preparation phase involves a 5-week Orientation and General Training program (OTP) and the English Preparation courses (PEN) which could last from 2 months to 1 year. The OTP includes 3 parts: 1) Orientation; 2) Military training; and 3) Experience, aiming at introducing students to community engagement, sustainable development, and military training. Students may have to attend PEN only if they fail to meet the entrance language requirement. PEN is classified into 6 levels ranging from A0 to B2 and each level of PEN is taught in 2 months. PEN could take place before or simultaneously with the OTP.',''),

('BEL','English Language','Training bachelors in English Language to have enough knowledge, professional skills, political products, ethics, professional behavior and good health to be able to work effectively through the use of English in the field. field of commerce or information technology, meeting the requirements of society and the economy in the process of international integration. Training program objectives: a) Equip students with basic knowledge of the English language, knowledge and professional skills in specific fields such as commerce or information technology. b) Train students in the necessary virtues and skills in a professional working environment, know how to apply language knowledge and combine knowledge of commerce and information technology into real work. c) Provide students with cultural and social knowledge; Train and promote initiative and creativity in study, work and life. Students majoring in English can work at domestic enterprises, foreign-invested enterprises, representative offices, international organizations, economic, financial, and public organizations. Domestic, international and regional arts in fields such as education, business, import-export, media, aviation, banking, auditing, management and research, can guarantee some jobs such as: - Translator, interpreter; - Sales, sales, business development officer; - Signal officer; - Transaction officer; - Teller - Customer care officer - Assistant (internship) director, project director; - English lecturer specializing in commerce and technology',''),('BGD','Graphic Design','Buffet 1 & 2 free

ADI201 Design effective design (Brand identity design)
ADB201 Design Book (Book Design)
ADP201 Packaging design (Packaging design)
DGP201 Digital Painting (Digital Painting)',''),

('BMC','Multimedia Communication','Elective industry knowledge group 1 (choose 2/4)
WED201 Basic website design Web Design
DTG302 Image and sound design in filmmaking (Visual Effects - Principles of Compositing)
TPG20x Typography 1 (Typography 1)
MID201 Multimedia Interactive Design (Multimedia Interactive Design)
Elective industry knowledge group 2 (choose 2/3)
MKT304 Integrated Marketing Communication
CMC201 Culture and Communication (Communication and Culture)
CAA201 Principles of Advertising and Communication (Principles of Advertising and Communication)','')
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
