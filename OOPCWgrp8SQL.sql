CREATE DATABASE examinationmanagement

CREATE TABLE examination
(exmNo VARCHAR(10) PRIMARY KEY, 
exmName VARCHAR(10),
vivaDate DATE,
subDate DATE,
WEDate DATE);

CREATE TABLE student
(stdno VARCHAR(10) PRIMARY KEY,
stdName VARCHAR(10),
stdAge INT);

CREATE TABLE exammarks (
    stdId VARCHAR(10) ,
    exmNo VARCHAR(10) ,
    VivaMarks DECIMAL(4,2),
    RepMarks DECIMAL(4,2),
    WEexam DECIMAL(4,2),
    PRIMARY KEY (stdId, exmNo),
    FOREIGN KEY (stdId) REFERENCES student(stdno),
    FOREIGN KEY (exmNo) REFERENCES Examination(exmno)
);

create table studentgrades
(stdId VARCHAR(10),
exmNO VARCHAR (10),
CWGrade VARCHAR(5),
WEGrade VARCHAR(5),
FinalGrade VARCHAR(5),
GPA DECIMAL(5,2),
totalmarks DECIMAL(5,2), 
Pass_or_Fail VARCHAR(6),
FOREIGN KEY (stdId) REFERENCES 	Student(stdNo),
FOREIGN KEY(exmNo) REFERENCES 	Examination(exmno),
PRIMARY KEY (exmNO,stdID));

CREATE TABLE reattemptmarks
(stdID 	VARCHAR(10),
exmNO VARCHAR(10),
vivaMarks DECIMAL(4,2),
RepMarks DECIMAL(4,2),
WEMarks DECIMAL (4,2),
FOREIGN KEY (stdId) REFERENCES 	Student(stdNo),
FOREIGN KEY(exmNo) REFERENCES 	Examination(exmno),
PRIMARY KEY (exmNO,stdID));
