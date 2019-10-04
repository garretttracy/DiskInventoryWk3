/*
MOD LOG

Added DROP and CREATE DATABASE queries 10/4
Added Table and column definitions 10/4
Modified DROP clause to use master, this prevents SQL from throwing a database in use error 10/4
Added diskUserGT 10/4
added DROP LOGIN // DROP USER clause 10/4
Gave diskUserGT permission to read out of database 10/4

*/

--If database already exists, this will delete and begin the rebuild process
use master;
if DB_ID('disk_inventoryGT') is not null
DROP DATABASE disk_inventoryGT
DROP LOGIN diskUserGT

go

CREATE DATABASE disk_inventoryGT;
go

use disk_inventoryGT;
go

--This Query adds the various tables and their column definitions, the tables are created in order as to avoid errors
CREATE TABLE Inventory(
	Inventory_ID int NOT NULL identity primary key,
	status varchar(15) 
	
);

CREATE TABLE Borrower(
	Borrower_ID int NOT NULL identity primary key,
	First_Name varchar(20) NOT NULL,
	Last_Name varchar(20) NOT NULL,
	Borrower_Phone_Number varchar(15) NOT NULL
);

CREATE TABLE Borrow_details(
	Borrow_ID int NOT NULL identity primary key,
	Borrower_ID int NOT NULL foreign key REFERENCES Borrower(Borrower_ID),
	Inventory_ID int NOT NULL foreign key REFERENCES Inventory(Inventory_ID),
	Borrowed_Date date NOT NULL,
	Returned_Date date NULL

);

CREATE TABLE Artist(
	Artist_ID int NOT NULL identity primary key,
	Artist_fname varchar(25) NOT NULL,
	Artist_lname varchar(25) NOT NULL
);

CREATE TABLE Band(
	Band_ID int NOT NULL identity primary key,
	Artist_ID int NOT NULL foreign key REFERENCES Artist(Artist_ID),
	Band_Name varchar(50) NOT NULL
);

CREATE TABLE Disk_Artist(
	Album_Artist_ID int NOT NULL identity primary key,
	Artist_ID int NULL foreign key REFERENCES Artist(Artist_ID),
	Band_ID int NULL foreign key REFERENCES Band(Band_ID)
);

CREATE TABLE CD(
	CD_ID int NOT NULL identity primary key foreign key REFERENCES Inventory(Inventory_ID),
	CD_Name varchar(100) NOT NULL,
	Release_Date date NOT NULL,
	Genre varchar(25) NOT NULL,
	Album_Artist_ID int NOT NULL foreign key REFERENCES Disk_Artist(Album_Artist_ID)
	
);

CREATE TABLE DVD(
	DVD_ID int NOT NULL identity primary key foreign key REFERENCES Inventory(Inventory_ID),
	DVD_Name varchar(100) NOT NULL,
	Release_Date date NOT NULL,
	Genre varchar(25) NOT NULL
		
);

--This query adds login information and a user to which that information is associated
CREATE LOGIN diskUserGT WITH PASSWORD = 'Pa$$w0rd',
	DEFAULT_DATABASE = disk_inventoryGT;
CREATE USER diskUserGT for LOGIN diskUserGT;

--This query allows the diskUserGT to look at the various tables within the disk_inventoryGT db
use disk_inventoryGT
ALTER ROLE db_datareader ADD MEMBER diskUserGT;
