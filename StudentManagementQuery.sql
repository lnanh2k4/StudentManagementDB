﻿CREATE DATABASE StudentManagement
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
															('AIP392','BIT_SE_18B','8'),
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
															('AIP392','BIT_SE_18A','8'),
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
															('AIP392','BIT_SE_18C','8'),
															('DBM301','BIT_SE_18C','7'),



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

INSERT INTO Student(StID, StFName, StLName, StSex, StEmail, CaID, StSemester, CuID) VALUES ('CE180001', 'A', 'Nguyen Van', '1', 'ANVCE000001@fpt.edu.vn', '', '6', ''),
																						   ('SE180002', 'B', 'Nguyen Van', '1', 'BNVSE000002@fpt.edu.vn', '', '3', ''),
																						   ('SE180003', 'C', 'Nguyen Van', '1', 'CNVSE000003@fpt.edu.vn', '', '4', ''),
																						   ('CE180004', 'D', 'Nguyen Van', '1', 'DNVCE000004@fpt.edu.vn', '', '2', ''),
																						   ('CE180005', 'E', 'Nguyen Van', '1', 'ENVCE000005@fpt.edu.vn', '', '5', ''),
																						   ('CE180006', 'F', 'Nguyen Van', '1', 'FNVCE000006@fpt.edu.vn', '', '6', ''),
																						   ('CE180007', 'G', 'Nguyen Van', '1', 'GNVCE000007@fpt.edu.vn', '', '2', ''),
																						   ('CE180008', 'H', 'Nguyen Van', '1', 'HNVCE000008@fpt.edu.vn', '', '6', ''),
																						   ('CE180009', 'I', 'Nguyen Van', '1', 'INVCE000009@fpt.edu.vn', '', '4', ''),
																						   ('CE180010', 'J', 'Nguyen Van', '1', 'JNVCE000010@fpt.edu.vn', '', '7', ''),
																						   ('CE180011', 'K', 'Nguyen Van', '1', 'KNVCE000011@fpt.edu.vn', '', '5', ''),
																						   ('SE180012', 'L', 'Nguyen Van', '1', 'LNVSE000012@fpt.edu.vn', '', '3', ''),
																						   ('HE180013', 'M', 'Nguyen Van', '1', 'MNVHE000013@fpt.edu.vn', '', '1', ''),
																						   ('HE180014', 'N', 'Nguyen Van', '1', 'NNVHE000014@fpt.edu.vn', '', '7', ''),
																						   ('CE180015', 'O', 'Nguyen Van', '1', 'ONVCE000015@fpt.edu.vn', '', '4', ''),
																						   ('CE180016', 'P', 'Nguyen Van', '1', 'PNVCE000016@fpt.edu.vn', '', '5', ''),
																						   ('CE180017', 'K', 'Nguyen Van', '1', 'KNVCE000017@fpt.edu.vn', '', '3', ''),
																						   ('CE180018', 'R', 'Nguyen Van', '1', 'RNVCE000018@fpt.edu.vn', '', '4', ''),
																						   ('CE180019', 'S', 'Nguyen Van', '1', 'SNVCE000019@fpt.edu.vn', '', '6', ''),
																						   ('CE180020', 'T', 'Nguyen Van', '1', 'TNVCE000020@fpt.edu.vn', '', '5', ''),
																						   ('CE180021', 'U', 'Nguyen Van', '1', 'UNVCE000021@fpt.edu.vn', '', '2', ''),
																						   ('CE180022', 'V', 'Nguyen Van', '1', 'VNVCE000022@fpt.edu.vn', '', '3', ''),
																						   ('CE180023', 'W', 'Nguyen Van', '1', 'WNVCE000023@fpt.edu.vn', '', '6', ''),
																						   ('CE180024', 'X', 'Nguyen Van', '1', 'XNVCE000024@fpt.edu.vn', '', '4', ''),
																						   ('CE180025', 'Y', 'Nguyen Van', '1', 'YNVCE000025@fpt.edu.vn', '', '7', ''),
																						   ('CE180026', 'Z', 'Nguyen Van', '1', 'ZNVCE000026@fpt.edu.vn', '', '5', ''),
																						   ('CE180027', 'A', 'Nguyen Thi', '0', 'ANVCE000027@fpt.edu.vn', '', '7', ''),
																						   ('CE180028', 'B', 'Nguyen Thi', '0', 'BNVCE000028@fpt.edu.vn', '', '4', ''),
																						   ('CE180029', 'C', 'Nguyen Thi', '0', 'CNVCE000029@fpt.edu.vn', '', '5', ''),
																						   ('CE180030', 'D', 'Nguyen Thi', '0', 'DNVCE000030@fpt.edu.vn', '', '2', ''),
																						   ('CE180031', 'E', 'Nguyen Thi', '0', 'ENVCE000031@fpt.edu.vn', '', '5', ''),
																						   ('CE180032', 'F', 'Nguyen Thi', '0', 'FNVCE000032@fpt.edu.vn', '', '3', ''),
																						   ('CE180033', 'G', 'Nguyen Thi', '0', 'GNVCE000033@fpt.edu.vn', '', '4', ''),
																						   ('CE180034', 'H', 'Nguyen Thi', '0', 'HNVCE000034@fpt.edu.vn', '', '6', ''),
																						   ('CE180035', 'I', 'Nguyen Thi', '0', 'INVCE000035@fpt.edu.vn', '', '5', ''),
																						   ('CE180036', 'J', 'Nguyen Thi', '0', 'JNVCE000036@fpt.edu.vn', '', '7', ''),
																						   ('CE180037', 'K', 'Nguyen Thi', '0', 'KNVCE000037@fpt.edu.vn', '', '5', ''),
																						   ('CE180038', 'L', 'Nguyen Thi', '0', 'LNVCE000038@fpt.edu.vn', '', '3', ''),
																						   ('CE180039', 'M', 'Nguyen Thi', '0', 'MNVCE000039@fpt.edu.vn', '', '2', ''),
																						   ('CE180040', 'N', 'Nguyen Thi', '0', 'NNVCE000040@fpt.edu.vn', '', '7', ''),
																						   ('CE180041', 'O', 'Nguyen Thi', '0', 'ONVCE000041@fpt.edu.vn', '', '4', ''),
																						   ('CE180042', 'P', 'Nguyen Thi', '0', 'PNTCE000042@fpt.edu.vn', '', '5', ''),
																						   ('HE180043', 'K', 'Nguyen Thi', '0', 'KNTHE000043@fpt.edu.vn', '', '3', ''),
																						   ('HE180044', 'R', 'Nguyen Thi', '0', 'RNTHE000044@fpt.edu.vn', '', '4', ''),
																						   ('HE180045', 'S', 'Nguyen Thi', '0', 'SNTHE000045@fpt.edu.vn', '', '5', ''),
																						   ('HE180046', 'T', 'Nguyen Thi', '0', 'TNTHE000046@fpt.edu.vn', '', '6', ''),
																						   ('HE180047', 'U', 'Nguyen Thi', '0', 'UNTHE000047@fpt.edu.vn', '', '7', ''),
																						   ('HE180048', 'V', 'Nguyen Thi', '0', 'VNTHE000048@fpt.edu.vn', '', '7', ''),
																						   ('HE180049', 'W', 'Nguyen Thi', '0', 'WNTHE000049@fpt.edu.vn', '', '7', ''),
																						   ('HE180050', 'X', 'Nguyen Thi', '0', 'XNTHE000050@fpt.edu.vn', '', '7', ''),
																						   ('DE180051', 'Y', 'Nguyen Thi', '0', 'YNTDE000051@fpt.edu.vn', '', '2', ''),
																						   ('HE180052', 'Z', 'Nguyen Thi', '0', 'ZNTHE000052@fpt.edu.vn', '', '7', ''),
																						   ('HE180053', 'A', 'Le Thai', '1', 'ANTHE000053@fpt.edu.vn', '', '6', ''),
																						   ('SE180054', 'B', 'Le Thai', '1', 'BNTSE000054@fpt.edu.vn', '', '6', ''),
																						   ('DE180055', 'C', 'Le Thai', '1', 'CNTDE000055@fpt.edu.vn', '', '2', ''),
																						   ('SE180056', 'D', 'Le Thai', '1', 'DNTSE000056@fpt.edu.vn', '', '3', ''),
																						   ('CE180057', 'E', 'Le Thai', '1', 'ENTCE000057@fpt.edu.vn', '', '2', ''),
																						   ('SE180058', 'F', 'Le Thai', '1', 'FNTSE000058@fpt.edu.vn', '', '3', ''),
																						   ('DE180059', 'G', 'Le Thai', '1', 'GNTDE000059@fpt.edu.vn', '', '2', ''),
																						   ('SE180060', 'H', 'Le Thai', '1', 'HNTSE000060@fpt.edu.vn', '', '3', ''),
																						   ('CE180061', 'I', 'Le Thai', '1', 'INTCE000061@fpt.edu.vn', '', '2', ''),
																						   ('SE180062', 'J', 'Le Thai', '1', 'JNTSE000062@fpt.edu.vn', '', '3', ''),
																						   ('SE180063', 'K', 'Le Thai', '1', 'KNTSE000063@fpt.edu.vn', '', '3', ''),
																						   ('SE180064', 'L', 'Le Thai', '1', 'LNTSE000064@fpt.edu.vn', '', '3', ''),
																						   ('SE180065', 'M', 'Le Thai', '1', 'MNTSE000065@fpt.edu.vn', '', '3', ''),
																						   ('DE180066', 'N', 'Le Thai', '1', 'NNTDE000066@fpt.edu.vn', '', '2', ''),
																						   ('CE180067', 'O', 'Le Thai', '1', 'ONTCE000067@fpt.edu.vn', '', '2', ''),
																						   ('HE180068', 'P', 'Le Thai', '1', 'PNTHE000068@fpt.edu.vn', '', '6', ''),
																						   ('SE180069', 'K', 'Le Thai', '1', 'KNTSE000069@fpt.edu.vn', '', '3', ''),
																						   ('SE180070', 'R', 'Le Thai', '1', 'RNTSE000070@fpt.edu.vn', '', '3', ''),
																						   ('DE180071', 'S', 'Le Thai', '1', 'SNTDE000071@fpt.edu.vn', '', '2', ''),
																						   ('HE180072', 'T', 'Le Thai', '1', 'TNTHE000072@fpt.edu.vn', '', '6', ''),
																						   ('CE180073', 'U', 'Le Thai', '1', 'UNTCE000073@fpt.edu.vn', '', '2', ''),
																						   ('SE180074', 'V', 'Le Thai', '1', 'VNTSE000074@fpt.edu.vn', '', '3', ''),
																						   ('CE180075', 'W', 'Le Thai', '1', 'WNTCE000075@fpt.edu.vn', '', '2', ''),
																						   ('DE180076', 'X', 'Le Thai', '1', 'XNTDE000076@fpt.edu.vn', '', '2', ''),
																						   ('DE180077', 'Y', 'Le Thai', '1', 'YNTDE000077@fpt.edu.vn', '', '2', ''),
																						   ('HE180078', 'Z', 'Le Thai', '1', 'ZNTHE000078@fpt.edu.vn', '', '6', ''),
																						   ('DE180079', 'A', 'Le Thi', '0', 'ANTDE000079@fpt.edu.vn', '', '2', ''),
																						   ('DE180080', 'B', 'Le Thi', '0', 'BNTDE000080@fpt.edu.vn', '', '2', ''),
																						   ('HE180081', 'C', 'Le Thi', '0', 'CNTHE000081@fpt.edu.vn', '', '6', ''),
																						   ('SE180082', 'D', 'Le Thi', '0', 'DNTSE000082@fpt.edu.vn', '', '3', ''),
																						   ('SE180083', 'E', 'Le Thi', '0', 'ENTSE000083@fpt.edu.vn', '', '3', ''),
																						   ('CE180084', 'F', 'Le Thi', '0', 'FNTCE000084@fpt.edu.vn', '', '2', ''),
																						   ('DE180085', 'G', 'Le Thi', '0', 'GNTDE000085@fpt.edu.vn', '', '2', ''),
																						   ('HE180086', 'H', 'Le Thi', '0', 'HNTHE000086@fpt.edu.vn', '', '6', ''),
																						   ('HE180087', 'I', 'Le Thi', '0', 'INTHE000087@fpt.edu.vn', '', '6', ''),
																						   ('DE180088', 'J', 'Le Thi', '0', 'JNTDE000088@fpt.edu.vn', '', '2', ''),
																						   ('SE180089', 'K', 'Le Thi', '0', 'KNTSE000089@fpt.edu.vn', '', '3', ''),
																						   ('SE180090', 'L', 'Le Thi', '0', 'LNTSE000090@fpt.edu.vn', '', '3', ''),
																						   ('SE180091', 'M', 'Le Thi', '0', 'MNTSE000091@fpt.edu.vn', '', '3', ''),
																						   ('DE180092', 'N', 'Le Thi', '0', 'NNTDE000092@fpt.edu.vn', '', '2', ''),
																						   ('CE180093', 'O', 'Le Thi', '0', 'ONTCE000093@fpt.edu.vn', '', '2', ''),
																						   ('HE180094', 'P', 'Le Thi', '0', 'PNTHE000094@fpt.edu.vn', '', '6', ''),
																						   ('HE180095', 'K', 'Le Thi', '0', 'KNTHE000095@fpt.edu.vn', '', '6', ''),
																						   ('HE180096', 'R', 'Le Thi', '0', 'RNTHE000096@fpt.edu.vn', '', '6', ''),
																						   ('DE180097', 'S', 'Le Thi', '0', 'SNTDE000097@fpt.edu.vn', '', '2', ''),
																						   ('CE180098', 'T', 'Le Thi', '0', 'TNTCE000098@fpt.edu.vn', '', '2', ''),
																						   ('HE180099', 'U', 'Le Thi', '0', 'UNTHE000099@fpt.edu.vn', '', '6', ''),
																						   ('DE180100', 'V', 'Le Thi', '0', 'VNTDE000100@fpt.edu.vn', '', '2', ''),
																						   ('SE180101', 'W', 'Le Thi', '0', 'WNTSE000101@fpt.edu.vn', '', '3', ''),
																						   ('SE180102', 'X', 'Le Thi', '0', 'XNTSE000102@fpt.edu.vn', '', '3', ''),
																						   ('SE180103', 'Y', 'Le Thi', '0', 'YNTSE000103@fpt.edu.vn', '', '3', ''),
																						   ('DE180104', 'Z', 'Le Thi', '0', 'ZNTDE000104@fpt.edu.vn', '', '2', '');
GO

--DROP TABLE Student
--GO

--USE master
--GO

--DROP DATABASE StudentManagement
--GO
