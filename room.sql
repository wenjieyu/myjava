DROP TABLE Room;
CREATE TABLE Room
( Roomtype Varchar2(50) NOT NULL,
  RoomDesc varchar2(50) NOT NULL,
  CONSTRAINT Room_Roomtype_pk PRIMARY KEY (Roomtype)
  CONSTRAINT Room_RoomDesc_uk UNIQUE(RoomDesc),
    );