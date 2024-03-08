CREATE TABLE Campus(
CaID NVARCHAR(8), -- The Campus ID is declared as a String type that can be written in Vietnamese
CaName NVARCHAR(30), -- The Campus Name is declared as a String type that can be written in Vietnamese
CaAddress NVARCHAR(255), -- The Campus Address is declared as a String type that can be written in Vietnamese
CaEmail NVARCHAR(30), -- The Email of Campus is declared as a String type that can be written in Vietnamese
CaHotline NVARCHAR(30), -- The Hotline of Campus is declared as a String type that can be written in Vietnamese
CONSTRAINT PK_Campus PRIMARY KEY (CaID) -- Add primary key condition PK_Campus by CaID
)
GO