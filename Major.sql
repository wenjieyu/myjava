DROP TABLE Major;
CREATE TABLE Major
( MajorId Number(4) NOT NULL,
  MajorDesc varchar2(50) NOT NULL,
  CONSTRAINT Major_MajorId_pk PRIMARY KEY (MajorId),
  CONSTRAINT major_majorId_cc
   CHECK((MajorId>=100)and(MajorId<=600) )  
    );