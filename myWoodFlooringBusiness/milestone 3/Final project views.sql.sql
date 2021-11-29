 /* Final Project Views 

 USE myWoodFlooringBusiness;
 GO

 /*  View #1 
 -- updatable view --
 CREATE VIEW CurrentInventory
 AS
 SELECT FloorID, FlooringType, SqFt, Price, MyCost
 FROM Inventory
 GO 
 --original data--
 SELECT * FROM CurrentInventory;

 -- updating price --

 GO
 UPDATE CurrentInventory
 SET SqFt = 4
 WHERE FloorID=2;
 GO

 -- displaying new data--

 SELECT * FROM CurrentInventory;

View #2 

--creating view --

GO
CREATE View InstallerInfo
AS
SELECT InstallerID, FName, LName
FROM Installers;
GO 
-- using the view to display the data --

SELECT * FROM InstallerInfo;

View #3

-- creating view --

GO
CREATE VIEW OrderInformation 
AS
SELECT  OrderDate, InstallationDate, AmountOrdered
FROM Orders JOIN OrderDetail ON Orders.OrderID = OrderDetail.OrderID 
WHERE AmountOrdered > 1000;
GO

-- using the view to display the data --

SELECT * FROM OrderInformation;

View #4

-- creating view --

GO 
CREATE VIEW CustomerInfo
AS
SELECT FName, LName, [Address], Phone#
FROM Customers;
GO

-- using the view to display the data --

SELECT * FROM CustomerInfo;*/

