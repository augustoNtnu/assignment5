DROP SCHEMA
IF EXISTS task2;
CREATE SCHEMA task2 COLLATE = utf8_unicode_ci;
USE task2;

CREATE TABLE IF NOT EXISTS Skier (
  userName varchar(20) NOT NULL,
  firstName varchar(20) NOT NULL,
  LastName varchar(20) NOT NULL,
  dateOfBirth int(5) NOT NULL,
  PRIMARY KEY (userName)
);
CREATE TABLE IF NOT EXISTS Skiing_Club (
  ID varchar(20) NOT NULL,
  clubName varchar(20) NOT NULL,
  City varchar(20) NOT NULL,
  Country varchar(20) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS Belongs_to (
  userName varchar (20) NOT NULL,
  clubID int(20) NOT NULL,
  season varchar(20) NOT NULL,
  totalDistance int(20) NOT NULL,
  PRIMARY KEY(userName, clubID),
  FOREIGN KEY (userName)
  REFERENCES Skier(userName)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
  FOREIGN KEY (clubID)
  REFERENCES Skiing_Club(ID)
  ON DELETE RESTRICT
  ON UPDATE CASCADE
);
