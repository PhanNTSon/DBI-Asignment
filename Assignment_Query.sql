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
	oID int ,
	cusID int,
	emID int, 
	oStatus nvarchar(15),
	oDate date,
	oTotalAmount int
	PRIMARY KEY (oID),
	FOREIGN KEY (cusID) REFERENCES Customer(cusID),
	FOREIGN KEY (emID) REFERENCES Employee(emID)
)
GO



CREATE TABLE OrderDetail(
	oID int,
	proID int, 
	oDetailID int,
	oDetailTotalPrice int,
	oDetailQuantity int,
	PRIMARY KEY (oID, oDetailID),
	FOREIGN KEY (oID) REFERENCES [Order](oID),
	FOREIGN KEY (proID) REFERENCES [Product](proID)

)
GO

CREATE TABLE Ingredient(
	inID int PRIMARY KEY,
	supID int,
	wareID int,
	inName nvarchar(50),
	inStockQuantity int,
	FOREIGN KEY (supID) REFERENCES [Supplier](supID),
	FOREIGN KEY (wareID) REFERENCES [Warehouse](wareID)
)
GO

CREATE TABLE ProductIngredients(
	proID int,
	inID int,
	ammountOfIngredients int,
	dateAdded date,
	updateDate date,
	PRIMARY KEY (proID, inID),
	FOREIGN KEY (inID) REFERENCES [Ingredient](inID),
	FOREIGN KEY (proID) REFERENCES [Product](proID)
)
GO

CREATE TABLE Stores(
	wareID int,
	proID int, 
	inventoryQuantity int,
	dateOfEntry date,
	dateOfIssue date,
	PRIMARY KEY (wareID, proID),
	FOREIGN KEY (wareID) REFERENCES [Warehouse](wareID),
	FOREIGN KEY (proID) REFERENCES [Product](proID)
)
GO
/*
---------------------------------- DROP TABLE SITE -----------------------------
*/
DROP TABLE Customer
DROP TABLE Employee
DROP TABLE [Product]
DROP TABLE Supplier
DROP TABLE Warehouse

DROP TABLE [Order]
DROP TABLE [OrderDetail]
DROP TABLE Ingredient
DROP TABLE ProductIngredients
DROP TABLE Stores
/*
---------------------------------- DROP TABLE SITE -----------------------------
*/