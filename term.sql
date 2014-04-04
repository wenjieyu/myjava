DROP TABLE Term;
CREATE TABLE Term
( TermId Varchar2(50) NOT NULL,
  TermDesc varchar2(50) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  CONSTRAINT Term_TermId_pk PRIMARY KEY (TermId)
    );