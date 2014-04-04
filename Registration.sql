
DROP TABLE Registration;
CREATE TABLE Registration
( StudentId Number(4) NOT NULL,
  CsId Number(4) NOT NULL,
  Midterm char(4) NOT NULL,
  Final char(4) NOT NULL,
  status   char(4) NOT NULL,
  CONSTRAINT Registration_studentId_CsId_pk PRIMARY KEY (StudentId,CsId)
  CONSTRAINT registration_studentId_cc
   CHECK((studentId>=100)and(studentId<=105) )  
    );