CREATE DATABASE myWoodFlooringBusiness;

GO
USE myWoodFlooringBusiness;
CREATE TABLE Inventory(
	FloorID int NOT NULL,
	FlooringType varchar (100) NOT NULL,
	Manufacture varchar(50),
	SqFt int NOT NULL,
	MyCost money,
	Price money,
	PRIMARY KEY(FloorID)
);
GO
CREATE TABLE Customers(
CustomerID int NOT NULL,
FName varchar(20) NOT NULL,
LName varchar(30) NOT NULL,
Address varchar(50) NOT NULL,
ZipCodeID varchar(15) NOT NULL,
Phone# varchar(20),
PaymentMethod varchar(30) NOT NULL,
PRIMARY KEY(CustomerID)
);
GO
CREATE TABLE ZipCode(
ZipCodeID varchar(15) NOT NULL,
City varchar(100) NOT NULL,
State varchar(50) NOT NULL,
PRIMARY KEY(ZipCodeID)
);
GO
CREATE TABLE Installers(
InstallerID int NOT NULL,
FName varchar(30), 
LName varchar(30) NOT NULL,
PRIMARY KEY(InstallerID)
);
GO
CREATE TABLE Orders(
OrderID int NOT NULL,
CustomerID int NOT NULL,
OrderDate datetime,
InsallationDate datetime
PRIMARY KEY(OrderID)
);
GO
CREATE TABLE OrderDetail(
RoomID int NOT NULL,
OrderID int NOT NULL,
Room varchar(50),
FloorID int NOT NULL,
Amount int NOT NULL,
installerID int NOT NULL,
PRIMARY KEY(RoomID)
);
GO
