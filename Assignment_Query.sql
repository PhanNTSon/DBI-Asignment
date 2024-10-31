CREATE DATABASE ASSIGNMENT_DBI
GO

USE ASSIGNMENT_DBI
GO

/*
---------------------------------- MAIN ENTITY -----------------------------
*/
CREATE TABLE Customer(
	cusID int PRIMARY KEY,
	[cusName] nvarchar(50),
	cusPhone nvarchar(10),
	[cusAddr] nvarchar(100)
)
GO

CREATE TABLE Employee(
	emID int PRIMARY KEY,
	emName nvarchar(50),
	emPhone nvarchar(10),
	emPosition nvarchar(20),
	emHireDate date
)
GO

CREATE TABLE [Product](
	proID int PRIMARY KEY,
	proName nvarchar(50),
	proCategory nvarchar(20),
	proPrice int,
	proQuantity int
)
GO

CREATE TABLE Warehouse(
	wareID int PRIMARY KEY,
	wareManager nvarchar(50),
	wareAddr nvarchar(100),
	warePhone nvarchar(10)
)
GO

CREATE TABLE Supplier(
	supID int PRIMARY KEY,
	supName nvarchar(50),
	supPhone nvarchar(10),
	supAddr nvarchar(100)
)
GO
/*
---------------------------------- OTHER ENTITY -----------------------------
*/
CREATE TABLE [Order](
	
)
GO