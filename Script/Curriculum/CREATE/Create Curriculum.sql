CREATE TABLE Curriculum(
CuID NVARCHAR(11), -- Declare the ID of the training program as a String that can be written in Vietnamese
CuName NVARCHAR(255), -- Declare the Name of the training program as a String that can be written in Vietnamese
SpID NVARCHAR(3), -- Declare the ID of the major as a String that can be written in Vietnamese
CONSTRAINT PK_Curriculum PRIMARY KEY (CuID), -- Add primary key condition PK_Curriculum by CuID
CONSTRAINT FK_CurriculumSpecialization FOREIGN KEY (SpID) REFERENCES Specialization(SpID) -- Add foreign key condition FK_CurriculumSpecialization by SpID
)
GO