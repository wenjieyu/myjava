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