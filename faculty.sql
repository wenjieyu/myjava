DROP TABLE Faculty;
CREATE TABLE Faculty
( FacultyId Number(4) NOT NULL,
  Name varchar2(50) NOT NULL,
  RoomId Number(4) NOT NULL,
  Phone Varchar2(50) NOT NULL,
  DeptId   Varchar2(50) NOT NULL,
  CONSTRAINT Faculty_FacultyId_pk PRIMARY KEY (FacultyId),
  CONSTRAINT Faculty_phone_uk UNIQUE(phone),
  CONSTRAINT Faculty_FacultyId_cc
   CHECK((FacultyId>=111)and(FacultyId<=555) ) 
  );