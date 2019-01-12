CREATE DATABASE Hackfest;

CREATE TABLE User(
    
    uId INT AUTO_INCREMENT PRIMARY KEY,
    uFname VARCHAR(20) NOT NULL,
    uLname VARCHAR(20) NOT NULL,
    uPassword VARCHAR(20),
    address VARCHAR(100), 
    uPhoneNo INT(10)

);


CREATE TABLE PickUpRequest(

    oId INT AUTO_INCREMENT PRIMARY KEY,
    uId VARCHAR(10) UNIQUE,
    cloth INT,
    footwear INT,
    book INT,
    orderDate DATE,
    pickupTime DATE,
    pickupDate DATE,
    FOREIGN KEY uId REFERENCES User(uId)

);


CREATE TABLE OrderRecord(

    date DATE PRIMARY KEY,
    cloth INT,
    footwear INT,
    book INT,

);