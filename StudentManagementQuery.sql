﻿CREATE DATABASE StudentManagementDB
GO

USE StudentManagementDB
GO

-- Create Campus table
CREATE TABLE Campus(
CaID NVARCHAR(8), -- The Campus ID is declared as a String type that can be written in Vietnamese
CaName NVARCHAR(30), -- The Campus Name is declared as a String type that can be written in Vietnamese
CaAddress NVARCHAR(255), -- The Campus Address is declared as a String type that can be written in Vietnamese
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
SuID NVARCHAR(20),
SuName NVARCHAR(255),
SuNoCredit INT,
SuPrerequisite TEXT,
CONSTRAINT PK_Subject PRIMARY KEY (SuID)
)
GO

INSERT INTO Subject(SuID,SuName,SuNoCredit,SuPrerequisite) VALUES 
('OTP101', ' Orientation and General Training Program' , ' 0', ''),
('PEN', ' Preparation English', ' 0', ' '),
('PHE_COM*1', ' Physical Education 1', ' 2', ' '),
('TMI_ELE', ' Traditional musical instrument', ' 3', ' '),
('CEA201', ' Computer Organization and Architecture', ' 3', ' '),
('CSI104', ' Introduction to Computer', ' 3', ' '),
('MAE101', ' Mathematics for Engineering', ' 3', ' '),
('PHE_COM*2', ' Physical Education 2', ' 2', ' '),
('PRF192', ' Programming Fundamentals', ' 3', ' '),
('SSL101c', ' Academic Skills for University Success', ' 3', ' '),
('MAD101', ' Discrete mathematics', ' 3', ' '),
('OSG202', ' Operating Systems', ' 3', ' '),
('PHE_COM*3', ' Physical Education 3', ' 2', ' '),
('PRO192', ' Object-Oriented Programming', ' 3', ' Pass PRF192'),
('SSG104', ' Communication and In-Group Working Skills', ' 3', ' '),
('CSD201', ' Data Structures and Algorithms', ' 3', ' PRO192'),
('DBI202', ' Introduction to Databases', ' 3', ' '),
('ITA203c', ' Management Information Systems', ' 3', ' '),
('JPD113', ' Elementary Japanese 1- A1.1', ' 3', ' '),
('LAB211', ' OOP with Java Lab', ' 3', ' PRO192'),
('JPD123', ' Elementary Japanese 1-A1.2', ' 3', ' JPD113'),
('MAS291', ' Statistics & Probability', ' 3', ' MAE101 or MAC101'),
('PRC391c', ' Cloud Computing', ' 3', ' PRO192'),
('PRJ302', ' Java Web Application Development', ' 3', ' DBI202, PRO192'),
('SWE201c', ' Introduction to Software Engineering', ' 3', ' PRO192 (not applied to the BIT_AI17 and BA programs)'),
('DTA301', ' Data Analysis', ' 3', ' PRO192, CSD201, DBI202, MAS291'),
('ISM302', ' Enterprise Resource Planning (ERP)', ' 3', ' '),
('ISP392', ' Information System Programming Project', ' 3', ' PRJ302, SWE201c'),
('ITA301', ' Information System Design & Analysis', ' 3', ' ITA203c, DBI202'),
('ITE302c', ' Ethics in IT', ' 3', ' None'),
('ENW492c', ' Academic Writing Skills', ' 3', ' '),
('OJT202', ' On-The-Job Training', ' 10', ' Students attain 90% of the total credits from term 1-term 5 (excluding Physical Education and OTP Programs) Students choosing JS combo (Japanese Bridge Engineer) have to pass JPD123'),
('EXE101', ' Experiential Entrepreneurship 1', ' 3', ' '),
('IS_COM*1', ' Subject 1 of Combo*', ' 3', ' '),
('IS_COM*2', ' Subject 2 of Combo*', ' 3', ' '),
('ISC301', ' e-Commerce', ' 3', ' Recommended to take this course after OJT'),
('ITB302c', ' Business Intelligence (BI)', ' 3', ' '),
('EXE201', ' Experiential Entrepreneurship 2', ' 3', ' EXE101'),
('IS_COM*3', ' Subject 3 of Combo*', ' 3', ' '),
('IS_COM*4', ' Subject 4 of Combo*', ' 3', ' '),
('MLN111', ' Philosophy of Marxism', ' 3', ' '),
('MLN122', ' Political economics of Marxism', ' 2', ' '),
('PMG201c', ' Project Management', ' 3', ' None'),
('HCM202', ' HCM Ideology', ' 2', ' MLN111, MLN122'),
('IS_GRA_ELE', ' Graduation Elective - Information System', ' 10', ' '),
('MLN131', ' Scientific socialism', ' 2', ' MLN111, MLN122'),
('VNR202', ' History of CPV', ' 2', ' MLN111, MLN122'),
('NWC204', 'Computer Networking ', '3 ', ' '),
('PRM392','Mobile Programming','3','PRO192'),
('SWP391', 'Software development project', '3', 'PRJ301, SWE201c'),
('SWR302', 'Software Requirement', '3', 'SWE102 or SWE201c'),
('SWT301', 'Software Testing', '3', 'SWE102 or SWE201c'),
('WDU203c', 'UI/UX Design', '3', ''),
('SWD392', 'Software Architecture and Design', '3', 'SWE201c, PRO192'),
('IOT102', 'Internet of Thing', '3', 'Familiarity with C programming'),
('PRN211', 'Basis Cross-Platform Application Programming With .NET', '3', 'PRO192 & DBI202'),
('PRN221', 'Advanced Cross-Platform Application Programming With .NET', '3', 'PRN211 (Basic Cross-Platform Application Programming With .NET)'),
('PRN231', 'Building Cross-Platform Back-End Application With .NET', '3', 'PRN221 ( BUILDING CROSS-PLATFORM WEB APPLICATION WITH .NET )'),
('JPD133', 'Elementary Japanese 1-A1/A2', '3', 'JPD123'),
('JPD316', 'Intermediate Japanese 1-B1/B2', '6', 'Passed JPD226 For JS: Passed OJT202'),
('JIT401', 'Information Technology Japanese', '3', 'Passed JJB391 JS: JPD316'),
('JFE301', 'Japanese fundamental information technologyskill standards', '3', ''),
('JPD326', 'Intermediate Japanese 2-B2.1', '3', 'Passed JPD223 or JPD226 JS: JPD322 or JPD316'),
('PRP201c', 'Python programming', '3', 'Recommend to have knowledge of basic programming in advance'),
('KOR311', 'Intermediate Korean Language 1', '6', 'KOR201'),
('KOR321', 'Intermediate Korean Language 2', '3', 'KOR311'),
('KOR411', 'Intermediate Korean Language 3', '6', 'KOR321'),
('MMA301', 'Multiplatform Mobile App Development', '3', 'FER201m; SDN301m'),
('WDP301', 'Web Development Project', '3', 'FER201m, SDN301m'),
('SAP311', 'SAP General 1', '3', ''),
('SAP321', 'SAP General 2', '3', 'SAP311'),
('DPL303m', 'Deep Learning', '3', 'AIL304m'),
('AIL304m', 'Machine Learning', '3', 'MAS291, MAE101'),
('DBM301', 'Data Mining', '3', ''),
('PMG202c','Project Management','3',''),
('NWC203c', 'Computer Networking',  '3', ''),
('WED201c', 'Web Design', '3', '')


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

-- Create a curriculum table
CREATE TABLE Curriculum(
CuID NVARCHAR(11), -- Declare the ID of the training program as a String that can be written in Vietnamese
CuName NVARCHAR(255), -- Declare the Name of the training program as a String that can be written in Vietnamese
SpID NVARCHAR(3), -- Declare the ID of the major as a String that can be written in Vietnamese
CONSTRAINT PK_Curriculum PRIMARY KEY (CuID), -- Add primary key condition PK_Curriculum by CuID
CONSTRAINT FK_CurriculumSpecialization FOREIGN KEY (SpID) REFERENCES Specialization(SpID), -- Add foreign key condition FK_CurriculumSpecialization by SpID
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

CREATE TABLE CurriculumDetail(
CDID INT IDENTITY,
SuID NVARCHAR(20),
CuID NVARCHAR(11),
CDSemester int,
CONSTRAINT PK_CurriculumDetail PRIMARY KEY (CDID),
CONSTRAINT FK_CurriculumDetail_Subject FOREIGN KEY (SuID) REFERENCES Subject(SuID),
CONSTRAINT FK_CurriculumDetail_Curriculum FOREIGN KEY (CuID) REFERENCES Curriculum(CuID)
)
GO

INSERT INTO CurriculumDetail(SuID,CuID,CDSemester) VALUES   ('OTP101','BIT_SE_18B','0'),
														    ('PEN','BIT_SE_18B','0'),               
                                                            ('PHE_COM*1','BIT_SE_18B','0'),          
                                                            ('TMI_ELE','BIT_SE_18B','0'),
														    ('MLN111','BIT_SE_18B','8'),
                                                            ('MLN122','BIT_SE_18B','8'),
                                                            ('MLN131','BIT_SE_18B','9'),
                                                            ('HCM202','BIT_SE_18B','9'),
                                                            ('VNR202','BIT_SE_18B','9'),                                         
														    ('SSL101c','BIT_SE_18B','1'),
															('ENW492c','BIT_SE_18B','6'),
															('JPD113','BIT_SE_18B','3'),
															('JPD123','BIT_SE_18B','4'),
															('EXE101','BIT_SE_18B','7'),
															('EXE201','BIT_SE_18B','8'),
															('MAE101','BIT_SE_18B','1'),
															('MAD101','BIT_SE_18B','2'),
															('MAS291','BIT_SE_18B','4'),
															('CSI104','BIT_SE_18B','1'),
															('CEA201','BIT_SE_18B','1'),
															('PRF192','BIT_SE_18B','1'),
															('PRO192','BIT_SE_18B','2'),
															('CSD201','BIT_SE_18B','3'),
															('OSG202','BIT_SE_18B','2'),
															('NWC203c','BIT_SE_18B','2'),
															('DBI202','BIT_SE_18B','3'),
															('LAB211','BIT_SE_18B','3'),
															('PMG202c','BIT_SE_18B','7'),
															('ITE302c','BIT_SE_18B','5'),
															('OJT202','BIT_SE_18B','6'),
															('PRM392','BIT_SE_18B','8'),
															('WED201c','BIT_SE_18B','3'),
															('PRJ301','BIT_SE_18B','4'),
															('SWP391','BIT_SE_18B','5'),
															('SWE201c','BIT_SE_18B','4'),
															('SWR302','BIT_SE_18B','5'),
															('SWT301','BIT_SE_18B','5'),
															('WDU203c','BIT_SE_18B','8'),
															('SWD392','BIT_SE_18B','7'),
															('IOT102','BIT_SE_18B','4'),
															('PRN211','BIT_SE_18B','5'),
															('PRN221','BIT_SE_18B','7'),															
															('PRN231','BIT_SE_18B','8'),
															('JPD133','BIT_SE_18B','5'),
															('JPD316','BIT_SE_18B','7'),
															('JIT401','BIT_SE_18B','8'),															
															('JFE301','BIT_SE_18B','8'),
															('JPD326','BIT_SE_18B','8'),
															('PRP201c','BIT_SE_18B','5'),
															('KOR311','BIT_SE_18B','7'),
															('KOR321','BIT_SE_18B','8'),
															('KOR411','BIT_SE_18B','8'),															
															('MMA301','BIT_SE_18B','8'),
															('WDP301','BIT_SE_18B','7'),
															('SAP311','BIT_SE_18B','7'),
															('SAP321','BIT_SE_18B','7'),															
															('DPL303m','BIT_SE_18B','8'),
															('AIL304m','BIT_SE_18B','7'),
															
															('DBM301','BIT_SE_18B','7'),

															('OTP101','BIT_SE_18A','0'),
														    ('PEN','BIT_SE_18A','0'),               
                                                            ('PHE_COM*1','BIT_SE_18A','0'),          
                                                            ('TMI_ELE','BIT_SE_18A','0'),
														    ('MLN111','BIT_SE_18A','8'),
                                                            ('MLN122','BIT_SE_18A','8'),
                                                            ('MLN131','BIT_SE_18A','9'),
                                                            ('HCM202','BIT_SE_18A','9'),
                                                            ('VNR202','BIT_SE_18A','9'),                                         
														    ('SSL101c','BIT_SE_18A','1'),
															('ENW492c','BIT_SE_18A','6'),
															('JPD113','BIT_SE_18A','3'),
															('JPD123','BIT_SE_18A','4'),
															('EXE101','BIT_SE_18A','7'),
															('EXE201','BIT_SE_18A','8'),
															('MAE101','BIT_SE_18A','1'),
															('MAD101','BIT_SE_18A','2'),
															('MAS291','BIT_SE_18A','4'),
															('CSI104','BIT_SE_18A','1'),
															('CEA201','BIT_SE_18A','1'),
															('PRF192','BIT_SE_18A','1'),
															('PRO192','BIT_SE_18A','2'),
															('CSD201','BIT_SE_18A','3'),
															('OSG202','BIT_SE_18A','2'),
															('NWC203c','BIT_SE_18A','2'),
															('DBI202','BIT_SE_18A','3'),
															('LAB211','BIT_SE_18A','3'),
															('PMG202c','BIT_SE_18A','7'),
															('ITE302c','BIT_SE_18A','5'),
															('OJT202','BIT_SE_18A','6'),
															('PRM392','BIT_SE_18A','8'),
															('WED201c','BIT_SE_18A','3'),
															('PRJ301','BIT_SE_18A','4'),
															('SWP391','BIT_SE_18A','5'),
															('SWE201c','BIT_SE_18A','4'),
															('SWR302','BIT_SE_18A','5'),
															('SWT301','BIT_SE_18A','5'),
															('WDU203c','BIT_SE_18A','8'),
															('SWD392','BIT_SE_18A','7'),
															('IOT102','BIT_SE_18A','4'),
															('PRN211','BIT_SE_18A','5'),
															('PRN221','BIT_SE_18A','7'),															
															('PRN231','BIT_SE_18A','8'),
															('JPD133','BIT_SE_18A','5'),
															('JPD316','BIT_SE_18A','7'),
															('JIT401','BIT_SE_18A','8'),															
															('JFE301','BIT_SE_18A','8'),
															('JPD326','BIT_SE_18A','8'),
															('PRP201c','BIT_SE_18A','5'),
															('KOR311','BIT_SE_18A','7'),
															('KOR321','BIT_SE_18A','8'),
															('KOR411','BIT_SE_18A','8'),															
															('MMA301','BIT_SE_18A','8'),
															('WDP301','BIT_SE_18A','7'),
															('SAP311','BIT_SE_18A','7'),
															('SAP321','BIT_SE_18A','7'),															
															('DPL303m','BIT_SE_18A','8'),
															('AIL304m','BIT_SE_18A','7'),
															('DBM301','BIT_SE_18A','7'),

															('OTP101','BIT_SE_18C','0'),
														    ('PEN','BIT_SE_18C','0'),               
                                                            ('PHE_COM*1','BIT_SE_18C','0'),          
                                                            ('TMI_ELE','BIT_SE_18C','0'),
														    ('MLN111','BIT_SE_18C','8'),
                                                            ('MLN131','BIT_SE_18C','9'),
                                                            ('HCM202','BIT_SE_18C','9'),
                                                            ('VNR202','BIT_SE_18C','9'),                                         
														    ('SSL101c','BIT_SE_18C','1'),
															('ENW492c','BIT_SE_18C','6'),
															('JPD113','BIT_SE_18C','3'),
															('JPD123','BIT_SE_18C','4'),
															('EXE101','BIT_SE_18C','7'),
															('EXE201','BIT_SE_18C','8'),
															('MAE101','BIT_SE_18C','1'),
															('MAD101','BIT_SE_18C','2'),
															('MAS291','BIT_SE_18C','4'),
															('CSI104','BIT_SE_18C','1'),
															('CEA201','BIT_SE_18C','1'),
															('PRF192','BIT_SE_18C','1'),
															('PRO192','BIT_SE_18C','2'),
															('CSD201','BIT_SE_18C','3'),
															('OSG202','BIT_SE_18C','2'),
															('NWC204','BIT_SE_18C','2'),
															('DBI202','BIT_SE_18C','3'),
															('LAB211','BIT_SE_18C','3'),
															('PMG202c','BIT_SE_18C','7'),
															('ITE302c','BIT_SE_18C','5'),
															('OJT202','BIT_SE_18C','6'),
															('PRM392','BIT_SE_18C','8'),
															('WED201c','BIT_SE_18C','3'),
															('PRJ301','BIT_SE_18C','4'),
															('SWP391','BIT_SE_18C','5'),
															('SWE201c','BIT_SE_18C','4'),
															('SWR302','BIT_SE_18C','5'),
															('SWT301','BIT_SE_18C','5'),
															('WDU203c','BIT_SE_18C','8'),
															('SWD392','BIT_SE_18C','7'),
															('IOT102','BIT_SE_18C','4'),
															('PRN211','BIT_SE_18C','5'),
															('PRN221','BIT_SE_18C','7'),															
															('PRN231','BIT_SE_18C','8'),
															('JPD133','BIT_SE_18C','5'),
															('JPD316','BIT_SE_18C','7'),
															('JIT401','BIT_SE_18C','8'),															
															('JFE301','BIT_SE_18C','8'),
															('JPD326','BIT_SE_18C','8'),
															('PRP201c','BIT_SE_18C','5'),
															('KOR311','BIT_SE_18C','7'),
															('KOR321','BIT_SE_18C','8'),
															('KOR411','BIT_SE_18C','8'),															
															('MMA301','BIT_SE_18C','8'),
															('WDP301','BIT_SE_18C','7'),
															('SAP311','BIT_SE_18C','7'),
															('SAP321','BIT_SE_18C','7'),															
															('DPL303m','BIT_SE_18C','8'),
															('AIL304m','BIT_SE_18C','7'),
														     ('DBM301','BIT_SE_18C','7')

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

INSERT INTO Student(StID, StFName, StLName, StSex, StEmail, CaID, StSemester, CuID) VALUES  ('CA180001', 'A', 'Nguyen Van', '1', 'ANVCA180001@fpt.edu.vn', 'FUCT', '2', 'BBA_TM_18C'),
																							('QE180002', 'B', 'Nguyen Van', '1', 'BNVQE180002@fpt.edu.vn', 'FUQN', '3', 'BIT_SE_18A'),
																							('SE180003', 'C', 'Nguyen Van', '1', 'CNVEE180003@fpt.edu.vn', 'FUHCM', '5', 'BIT_IS_18C'),
																							('CS180004', 'D', 'Nguyen Van', '1', 'DNVCS180004@fpt.edu.vn', 'FUCT', '7', 'BES_EN_18C'),
																							('CE180005', 'E', 'Nguyen Van', '1', 'ENVCE180005@fpt.edu.vn', 'FUCT', '3', 'BIT_IoT_18B'),
																							('CS180006', 'F', 'Nguyen Van', '1', 'FNVCS180006@fpt.edu.vn', 'FUCT', '4', 'BES_EN_18D'),
																							('CE180007', 'G', 'Nguyen Van', '1', 'GNVCE180007@fpt.edu.vn', 'FUCT', '7', 'BIT_GD_18B'),
																							('CA180008', 'H', 'Nguyen Van', '1', 'HNVCA180008@fpt.edu.vn', 'FUCT', '4', 'BBA_MKT_18B'),
																							('CE180009', 'I', 'Nguyen Van', '1', 'INVCE180009@fpt.edu.vn', 'FUCT', '1', 'BIT_AI_18C'),
																							('SE180010', 'J', 'Nguyen Van', '1', 'JNVSE180010@fpt.edu.vn', 'FUHCM', '2', 'BIT_GD_18C'),
																							('CA180011', 'K', 'Nguyen Van', '1', 'KNVCA180011@fpt.edu.vn', 'FUCT', '5', 'BBA_MC_18C'),
																							('SE180012', 'L', 'Nguyen Van', '1', 'LNVSE180012@fpt.edu.vn', 'FUHCM', '7', 'BIT_SE_18C'),
																							('HS180013', 'M', 'Nguyen Van', '1', 'MNVHS180013@fpt.edu.vn', 'FUHN', '8', 'BES_EN_18A'),
																							('HS180014', 'N', 'Nguyen Van', '1', 'NNVHS180014@fpt.edu.vn', 'FUHN', '2', 'BES_EN_18B'),
																							('QA180015', 'O', 'Nguyen Van', '1', 'ONVQA180015@fpt.edu.vn', 'FUQN', '5', 'BBA_IB_18A'),
																							('CA180016', 'P', 'Nguyen Van', '1', 'PNVCA180016@fpt.edu.vn', 'FUCT', '3', 'BBA_IB_18C'),
																							('CE180017', 'K', 'Nguyen Van', '1', 'KNVCE180017@fpt.edu.vn', 'FUCT', '6', 'BIT_IA_18C'),
																							('SE180018', 'R', 'Nguyen Van', '1', 'RNVSE180018@fpt.edu.vn', 'FUHCM', '3', 'BIT_IS_18C'),
																							('CA180019', 'S', 'Nguyen Van', '1', 'SNVCA180019@fpt.edu.vn', 'FUCT', '4', 'BBA_MC_18B'),
																							('SS180020', 'T', 'Nguyen Van', '1', 'TNVSS180020@fpt.edu.vn', 'FUHCM', '3', 'BKR_KR_18B'),
																							('CE180021', 'U', 'Nguyen Van', '1', 'UNVCE180021@fpt.edu.vn', 'FUCT', '2', 'BIT_GD_18C'),
																							('SE180022', 'V', 'Nguyen Van', '1', 'VNVSE180022@fpt.edu.vn', 'FUHCM', '6', 'BIT_IS_18B'),
																							('CS180023', 'W', 'Nguyen Van', '1', 'WNVCS180023@fpt.edu.vn', 'FUCT', '3', 'BJP_JP_18C'),
																							('CE180024', 'X', 'Nguyen Van', '1', 'XNVCE180024@fpt.edu.vn', 'FUCT', '4', 'BIT_SE_18D'),
																							('CE180025', 'Y', 'Nguyen Van', '1', 'YNVCE180025@fpt.edu.vn', 'FUCT', '5', 'BIT_AI_18C'),
																							('CE180026', 'Z', 'Nguyen Van', '1', 'ZNVCE180026@fpt.edu.vn', 'FUCT', '1', 'BIT_AI_18B'),
																							('CA180027', 'A', 'Nguyen Thi', '0', 'ANTCA180027@fpt.edu.vn', 'FUCT', '3', 'BBA_HM_18C'),
																							('CE180028', 'B', 'Nguyen Thi', '0', 'BNTCE180028@fpt.edu.vn', 'FUCT', '6', 'BIT_IoT_18D'),
																							('QE180029', 'C', 'Nguyen Thi', '0', 'CNTQE180029@fpt.edu.vn', 'FUQN', '5', 'BIT_IoT_18B'),
																							('CS180030', 'D', 'Nguyen Thi', '0', 'DNTCS180030@fpt.edu.vn', 'FUCT', '4', 'BJP_JP_18B'),
																							('CA180031', 'E', 'Nguyen Thi', '0', 'ENTCA180031@fpt.edu.vn', 'FUCT', '5', 'BBA_FIN_18C'),
																							('CE180032', 'F', 'Nguyen Thi', '0', 'FNTCE180032@fpt.edu.vn', 'FUCT', '5', 'BIT_SE_18B'),
																							('QE180033', 'G', 'Nguyen Thi', '0', 'GNTQE180033@fpt.edu.vn', 'FUQN', '7', 'BIT_AI_18C'),
																							('CE180034', 'H', 'Nguyen Thi', '0', 'HNTCE180034@fpt.edu.vn', 'FUCT', '7', 'BIT_IA_18C'),
																							('CA180035', 'I', 'Nguyen Thi', '0', 'INTCA180035@fpt.edu.vn', 'FUCT', '4', 'BBA_MC_18C'),
																							('SS180036', 'J', 'Nguyen Thi', '0', 'JNTSS180036@fpt.edu.vn', 'FUHCM', '6', 'BES_EN_18C'),
																							('CS180037', 'K', 'Nguyen Thi', '0', 'KNTCS180037@fpt.edu.vn', 'FUCT', '4', 'BKR_KR_18B'),
																							('CE180038', 'L', 'Nguyen Thi', '0', 'LNTCE180038@fpt.edu.vn', 'FUCT', '3', 'BIT_IoT_18C'),
																							('SE180039', 'M', 'Nguyen Thi', '0', 'MNTSE180039@fpt.edu.vn', 'FUHCM', '2', 'BIT_IA_18B'),
																							('SA180040', 'N', 'Nguyen Thi', '0', 'NNTSA180040@fpt.edu.vn', 'FUHCM', '1', 'BBA_MKT_18B'),
																							('SE180041', 'O', 'Nguyen Thi', '0', 'ONTSE180041@fpt.edu.vn', 'FUHCM', '8', 'BIT_IS_18B'),
																							('CE180042', 'P', 'Nguyen Thi', '0', 'PNTCE180042@fpt.edu.vn', 'FUCT', '5', 'BIT_IA_18D'),
																							('HS180043', 'K', 'Nguyen Thi', '0', 'KNTHS180043@fpt.edu.vn', 'FUHN', '9', 'BJP_JP_18C'),
																							('HE180044', 'R', 'Nguyen Thi', '0', 'RNTHE180044@fpt.edu.vn', 'FUHN', '6', 'BIT_AI_18D'),
																							('HS180045', 'S', 'Nguyen Thi', '0', 'SNTHS180045@fpt.edu.vn', 'FUHN', '4', 'BES_EN_18A'),
																							('HE180046', 'T', 'Nguyen Thi', '0', 'TNTHE180046@fpt.edu.vn', 'FUHN', '6', 'BIT_IS_18B'),
																							('QS180047', 'U', 'Nguyen Thi', '0', 'UNTQS180047@fpt.edu.vn', 'FUQN', '3', 'BES_EN_18C'),
																							('HS180048', 'V', 'Nguyen Thi', '0', 'VNTHS180048@fpt.edu.vn', 'FUHN', '6', 'BES_EN_18B'),
																							('HS180049', 'W', 'Nguyen Thi', '0', 'WNTHS180049@fpt.edu.vn', 'FUHN', '4', 'BES_EN_18D'),
																							('HS180050', 'X', 'Nguyen Thi', '0', 'XNTHS180050@fpt.edu.vn', 'FUHN', '6', 'BJP_JP_18A'),
																							('DA180051', 'Y', 'Nguyen Thi', '0', 'YNTDA180051@fpt.edu.vn', 'FUDN', '3', 'BBA_TM_18D'),
																							('HA180052', 'Z', 'Nguyen Thi', '0', 'ZNTHA180052@fpt.edu.vn', 'FUHN', '5', 'BBA_MKT_18C'),
																							('HE180053', 'A', 'Le Thai', '1', 'ALTHE180053@fpt.edu.vn', 'FUHN', '2', 'BIT_IoT_18B'),
																							('SS180054', 'B', 'Le Thai', '1', 'BLTSS180054@fpt.edu.vn', 'FUHCM', '3', 'BJP_JP_18D'),
																							('DA180055', 'C', 'Le Thai', '1', 'CLTDA180055@fpt.edu.vn', 'FUDN', '4', 'BBA_MKT_18D'),
																							('SE180056', 'D', 'Le Thai', '1', 'DLTSE180056@fpt.edu.vn', 'FUHCM', '1', 'BIT_AI_18B'),
																							('CA180057', 'E', 'Le Thai', '1', 'ELTCA180057@fpt.edu.vn', 'FUCT', '1', 'BBA_MC_18B'),
																							('SE180058', 'F', 'Le Thai', '1', 'FLTSE180058@fpt.edu.vn', 'FUHCM', '3', 'BIT_IoT_18C'),
																							('DA180059', 'G', 'Le Thai', '1', 'GLTDA180059@fpt.edu.vn', 'FUDN', '5', 'BBA_HM_18B'),
																							('QA180060', 'H', 'Le Thai', '1', 'HLTQA180060@fpt.edu.vn', 'FUQN', '5', 'BBA_TM_18C'),
																							('CE180061', 'I', 'Le Thai', '1', 'ILTCE180061@fpt.edu.vn', 'FUCT', '4', 'BIT_IS_18C'),
																							('SA180062', 'J', 'Le Thai', '1', 'JLTSA180062@fpt.edu.vn', 'FUHCM', '3', 'BBA_IB_18B'),
																							('SE180063', 'K', 'Le Thai', '1', 'KLTSE180063@fpt.edu.vn', 'FUHCM', '3', 'BIT_SE_18D'),
																							('SE180064', 'L', 'Le Thai', '1', 'LLTSE180064@fpt.edu.vn', 'FUHCM', '2', 'BIT_AI_18A'),
																							('SE180065', 'M', 'Le Thai', '1', 'MLTSE180065@fpt.edu.vn', 'FUHCM', '7', 'BIT_GD_18A'),
																							('DA180066', 'N', 'Le Thai', '1', 'NLTDA180066@fpt.edu.vn', 'FUDN', '8', 'BBA_FIN_18B'),
																							('CE180067', 'O', 'Le Thai', '1', 'OLTCE180067@fpt.edu.vn', 'FUCT', '6', 'BIT_IA_18B'),
																							('HA180068', 'P', 'Le Thai', '1', 'PLTHA180068@fpt.edu.vn', 'FUHN', '4', 'BBA_MKT_18C'),
																							('SE180069', 'K', 'Le Thai', '1', 'KLTSE180069@fpt.edu.vn', 'FUHCM', '6', 'BIT_GD_18D'),
																							('QE180070', 'R', 'Le Thai', '1', 'RLTQE180070@fpt.edu.vn', 'FUQN', '5', 'BIT_SE_18A'),
																							('DA180071', 'S', 'Le Thai', '1', 'SLTDA180071@fpt.edu.vn', 'FUDN', '5', 'BBA_IB_18B'),
																							('HA180072', 'T', 'Le Thai', '1', 'TLTHA180072@fpt.edu.vn', 'FUHN', '3', 'BBA_IB_18A'),
																							('CE180073', 'U', 'Le Thai', '1', 'ULTCE180073@fpt.edu.vn', 'FUCT', '2', 'BIT_IA_18C'),
																							('SE180074', 'V', 'Le Thai', '1', 'VLSE180074@fpt.edu.vn', 'FUHCM', '3', 'BIT_IS_18B'),
																							('CA180075', 'W', 'Le Thai', '1', 'WLTCG180075@fpt.edu.vn', 'FUCT', '6', 'BBA_MKT_18C'),
																							('DE180076', 'X', 'Le Thai', '1', 'XLTDE180076@fpt.edu.vn', 'FUDN', '4', 'BIT_GD_18B'),
																							('DE180077', 'Y', 'Le Thai', '1', 'YLTDE180077@fpt.edu.vn', 'FUDN', '6', 'BIT_SE_18B'),
																							('HA180078', 'Z', 'Le Thai', '1', 'ZLTHA180078@fpt.edu.vn', 'FUHN', '5', 'BBA_FIN_18C'),
																							('QE180079', 'A', 'Le Thi', '0', 'ALTQE180079@fpt.edu.vn', 'FUQN', '5', 'BIT_GD_18D'),
																							('DE180080', 'B', 'Le Thi', '0', 'BLTDE180080@fpt.edu.vn', 'FUDN', '1', 'BIT_IoT_18C'),
																							('HA180081', 'C', 'Le Thi', '0', 'CLTHA180081@fpt.edu.vn', 'FUHN', '1', 'BBA_IB_18B'),
																							('SS180082', 'D', 'Le Thi', '0', 'DLTSS180082@fpt.edu.vn', 'FUHCM', '9', 'BIT_GD_18C'),
																							('SE180083', 'E', 'Le Thi', '0', 'ELTSE180083@fpt.edu.vn', 'FUHCM', '6', 'BJP_JP_18B'),
																							('CA180084', 'F', 'Le Thi', '0', 'FLTCA180084@fpt.edu.vn', 'FUCT', '4', 'BBA_MC_18A'),
																							('DE180085', 'G', 'Le Thi', '0', 'GLTDE180085@fpt.edu.vn', 'FUDN', '3', 'BIT_AI_18B'),
																							('HA180086', 'H', 'Le Thi', '0', 'HLTHA180086@fpt.edu.vn', 'FUHN', '6', 'BBA_HM_18D'),
																							('HA180087', 'I', 'Le Thi', '0', 'ILTHA180087@fpt.edu.vn', 'FUHN', '4', 'BBA_MKT_18D'),
																							('DE180088', 'J', 'Le Thi', '0', 'JLTDE180088@fpt.edu.vn', 'FUDN', '7', 'BIT_SE_18C'),
																							('SS180089', 'K', 'Le Thi', '0', 'KLSS180089@fpt.edu.vn', 'FUHCM', '5', 'BKR_KR_18B'),
																							('QS180090', 'L', 'Le Thi', '0', 'LLTQS180090@fpt.edu.vn', 'FUQN', '5', 'BKR_KR_18D'),
																							('SE180091', 'M', 'Le Thi', '0', 'MLTSE180091@fpt.edu.vn', 'FUHCM', '2', 'BIT_SE_18D'),
																							('DA180092', 'N', 'Le Thi', '0', 'NLTDA180092@fpt.edu.vn', 'FUDN', '4', 'BBA_TM_18B'),
																							('CE180093', 'O', 'Le Thi', '0', 'OLTCE180093@fpt.edu.vn', 'FUCT', '7', 'BBA_FIN_18B'),
																							('HA180094', 'P', 'Le Thi', '0', 'PLTHA180094@fpt.edu.vn', 'FUHN', '3', 'BBA_FIN_18B'),
																							('QA180095', 'K', 'Le Thi', '0', 'KLTQA180095@fpt.edu.vn', 'FUQN', '3', 'BBA_MC_18B'),
																							('HA180096', 'R', 'Le Thi', '0', 'RLTHA180096@fpt.edu.vn', 'FUHN', '7', 'BBA_HM_18B'),
																							('DS180097', 'S', 'Le Thi', '0', 'SLTDS180097@fpt.edu.vn', 'FUDN', '5', 'BJP_JP_18C'),
																							('CA180098', 'T', 'Le Thi', '0', 'TLTCA180098@fpt.edu.vn', 'FUCT', '4', 'BBA_MKT_18C'),
																							('HA180099', 'U', 'Le Thi', '0', 'ULTHA180099@fpt.edu.vn', 'FUHN', '3', 'BBA_FIN_18B'),
																							('DA180100', 'V', 'Le Thi', '0', 'VLTDH180100@fpt.edu.vn', 'FUDN', '2', 'BES_EN_18B'),
																							('SE180101', 'W', 'Le Thi', '0', 'WLSE180101@fpt.edu.vn', 'FUHCM', '1', 'BIT_IA_18C'),
																							('QA180102', 'X', 'Le Thi', '0', 'XLTQA180102@fpt.edu.vn', 'FUQN', '9', 'BBA_MKT_18C'),
																							('SE180103', 'Y', 'Le Thi', '0', 'YLTSE180103@fpt.edu.vn', 'FUHCM', '2', 'BIT_SE_18A'),
																							('DA180104', 'Z', 'Le Thi', '0', 'ZLTDA180104@fpt.edu.vn', 'FUDN', '3', 'BBA_FIN_18B');




																							

GO

--DROP TABLE Student
--GO

--USE master
--GO

--DROP DATABASE StudentManagement
--GO
