DROP TABLE Student;
CREATE TABLE Student
( studentId Number(4) NOT NULL,
  Last varchar2(50) NOT NULL,
  First varchar2(50) NOT NULL,
  Street Varchar2(50) NOT NULL,
  City   Varchar2(50) NOT NULL,
  State  char(2) NOT NULL,
  Zip    Number(4) NOT NULL,
  StartTerm Varchar2(50) NOT NULL,
  Birthdate DATE NOT NULL,
  FacultyId Number(4) NOT NULL,
  MajorId   Number(4) NOT NULL,
  Phone 	Varchar2(50) NOT NULL,
  CONSTRAINT student_studentId_pk PRIMARY KEY(studentId),
  CONSTRAINT student_facultyid_fk FOREIGN KEY(FacultyId) REFERENCES faculty (FacultyId),
  CONSTRAINT student_phone_uk UNIQUE(phone),
  CONSTRAINT student_studentId_cc
   CHECK((studentId>=100)and(studentId<=105) )  
  );
  
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

DROP TABLE Course;
CREATE TABLE Course
( CourseId Number(4) NOT NULL,
  Title varchar2(50) NOT NULL,
  Credits Number(4) NOT NULL,
  PreReq Varchar2(50),
  CONSTRAINT course_courseId_pk PRIMARY KEY (CourseId),
  CONSTRAINT course_credits_cc
  CHECK((credits>=0)and(creditscredits<=3) ) 
    );

DROP TABLE Department;
CREATE TABLE Department
( DeptId Number(4) NOT NULL,
  DeptName varchar2(50) NOT NULL,
  FacultyId Number(4 NOT NULL,
  CONSTRAINT Department_deptId_pk PRIMARY KEY (Deptid)
    );
DROP TABLE Crssection;
CREATE TABLE Crssection
( CsId Number(4) NOT NULL,
  CourseId Number(4) NOT NULL,
  Section Number(4) NOT NULL,
  Termid varchar2(50) NOT NULL,
  FacultyId   Number(4) NOT NULL,
  Day  varchar2(50) NOT NULL,
  Starttime    Varchar2(50) NOT NULL,
  Endtime   Varchar2(50) NOT NULL,
  RoomId Number(4) NOT NULL,
  Maxcount Number(4) NOT NULL,
  CONSTRAINT Crss_CsId_pk PRIMARY KEY (CsId),
  CONSTRAINT Crss_maxcount_cc
   CHECK((Maxcount>=2)and(Maxcount<=40) )  
    );
DROP TABLE Location;
CREATE TABLE Location
( RoomId Number(4) NOT NULL,
  Building varchar2(50) NOT NULL,
  RoomNo Number(4) NOT NULL,
  Capacity Number(4) NOT NULL,
  Roomtype   char(1) NOT NULL,
  CONSTRAINT Loaction_RoomId_pk PRIMARY KEY (RoomId)
    CONSTRAINT location_capacity_cc
   CHECK((Capacity>=2)and(Capacity<=50) )  
  );
DROP TABLE Registration;
CREATE TABLE Registration
( StudentId Number(4) NOT NULL,
  CsId Number(4) NOT NULL,
  Midterm char(4) NOT NULL,
  Final char(4) NOT NULL,
  status   char(4) NOT NULL,
  CONSTRAINT Registration_studentId_pk PRIMARY KEY (StudentId,CsId)
  CONSTRAINT registration_studentId_cc
   CHECK((studentId>=100)and(studentId<=105) )  
    );
DROP TABLE Room;
CREATE TABLE Room
( Roomtype Varchar2(50) NOT NULL,
  RoomDesc varchar2(50) NOT NULL,
  CONSTRAINT Room_Roomtype_pk PRIMARY KEY (Roomtype)
  CONSTRAINT Room_RoomDesc_uk UNIQUE(RoomDesc),
    );	
DROP TABLE Term;
CREATE TABLE Term
( TermId Varchar2(50) NOT NULL,
  TermDesc varchar2(50) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  CONSTRAINT Term_TermId_pk PRIMARY KEY (TermId)
    );
DROP TABLE Major;
CREATE TABLE Major
( MajorId Number(4) NOT NULL,
  MajorDesc varchar2(50) NOT NULL,
  CONSTRAINT Major_MajorId_pk PRIMARY KEY (MajorId),
  CONSTRAINT major_majorId_cc
   CHECK((MajorId>=100)and(MajorId<=600) )  
    );	