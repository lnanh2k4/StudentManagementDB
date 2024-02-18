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

INSERT INTO Curriculum(CuID,CuName,CuDes,SpID) VALUES ('','','',''),
													 ('','','','')
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
