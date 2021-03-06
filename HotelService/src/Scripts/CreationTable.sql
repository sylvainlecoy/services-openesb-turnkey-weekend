CREATE TABLE HOTEL (

    ID              INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    NAME            VARCHAR(30),
    DESCRIPTION     VARCHAR(50),
    ADDRESS         VARCHAR(50),
    LOCATION        VARCHAR(30),
    NIGHTPRICE      DOUBLE,
    BREAKFASTPRICE  DOUBLE,
    STARS           INT);

CREATE TABLE HOTEL_RESERVATION (

    ID_REC        INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    ID_HOTEL      INT NOT NULL,
    FOREIGN KEY("ID_HOTEL") REFERENCES HOTEL("ID"),
    TOTALPRICE    DOUBLE NOT NULL,
    DATE          DATE,
    NBNIGHT	  INT,
    NBBREAKFAST   INT);

/*Insertions de tests*/
INSERT INTO HOTEL (NAME,DESCRIPTION,ADDRESS,LOCATION,NIGHTPRICE,BREAKFASTPRICE,STARS) VALUES ('ibis','super','13 rue des tests','Paris',13,9,3);
INSERT INTO HOTEL (NAME,DESCRIPTION,ADDRESS,LOCATION,NIGHTPRICE,BREAKFASTPRICE,STARS) VALUES ('mercure','moyen','15 rue des tests','Paris',23,7,2);
INSERT INTO HOTEL (NAME,DESCRIPTION,ADDRESS,LOCATION,NIGHTPRICE,BREAKFASTPRICE,STARS) VALUES ('F1','super bof','17 rue des tests','NANTES',33,5,1);