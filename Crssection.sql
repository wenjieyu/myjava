
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