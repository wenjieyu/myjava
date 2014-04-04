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