CREATE DATABASE DemoApp

USE DemoApp


CREATE TABLE Users(
   Id int PRIMARY KEY IDENTITY(1,1),
   Name nvarchar(50) NOT NULL,
   Surname nvarchar(50) NOT NULL,
   Email nvarchar(50) UNIQUE,
   RegistrationDate datetime CHECK('2022-10-11'>RegistrationDate) DEFAULT('2022-10-11'),
   ContactNumber nvarchar(50) DEFAULT('+994000000000'),
   Age int CHECK(Age>18),
   Adress nvarchar(50)
)

INSERT INTO Users
VALUES('Emil','Guluzade','emilhi@code.edu.az','2022-10-10','+994998596919',19,'SAHILQES,')






CREATE TABLE Categories(
   Id int PRIMARY KEY IDENTITY(1,1),
   Name nvarchar(50) NOT NULL,
   Slug nvarchar(50) UNIQUE,
   CreatedAt datetime CHECK('2022-10-11'>CreatedAt) DEFAULT('2022-10-11'),
   IsActive bit
)


INSERT INTO Categories
VALUES('Test1','Test1','2022-10-10',1),
       ('Test2','Test2','2022-10-05',0)
	   
SELECT Name, Surname,Email FROM Users	   
SELECT Name,IsActive FROM Categories