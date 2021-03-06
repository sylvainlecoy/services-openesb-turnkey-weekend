DROP TABLE BOX_RESERVATION;
DROP TABLE BOX_DETAILS;
DROP TABLE BOX;

CREATE TABLE BOX (ID
	INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        LOCATION VARCHAR(255),
	START_DATE DATE NOT NULL,
        START_TIME TIME NOT NULL,
        END_DATE DATE NOT NULL,
        END_TIME TIME NOT NULL,
        DESCRIPTION VARCHAR(255),
        PRICE DOUBLE NOT NULL,
        TRAVEL_ID INT NOT NULL,
        HOTEL_ID INT NOT NULL,
        RESTAURANT_ID INT NOT NULL,
        ACTIVITY_ID INT NOT NULL,
        ACTIVITY_TYPE VARCHAR(50) NOT NULL);

CREATE TABLE BOX_DETAILS (ID
        INT NOT NULL UNIQUE,
        FOREIGN KEY("ID") REFERENCES BOX("ID"),
        HOTEL_DETAILS VARCHAR(255) NOT NULL,
        RESTAURANT_DETAILS VARCHAR(255) NOT NULL,
        MANIFESTATION_DETAILS VARCHAR(255) NOT NULL,
        GMAP_DETAILS VARCHAR(255) NOT NULL);

CREATE TABLE BOX_RESERVATION (ID_REC
        INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        ID_BOX INT NOT NULL,
        FOREIGN KEY("ID_BOX") REFERENCES BOX("ID"),
        ORDER_DATE DATE NOT NULL,
        BILL DOUBLE NOT NULL);
