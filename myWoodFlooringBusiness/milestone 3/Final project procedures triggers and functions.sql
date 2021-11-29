/* Final Project Procedures 

-- Retrieves and displays data
USE myWoodFlooringBusiness;
GO
CREATE PROC spOrderDetail
AS 
SELECT * FROM OrderDetail;
GO 
EXEC spOrderDetail;

-- Takes an input parameter

USE myWoodFlooringBusiness;
GO 
CREATE PROC spGetCustomer
		@CustomerID int
AS
BEGIN
		SELECT * FROM Customers
		WHERE CustomerID = @CustomerID;
END
GO
EXEC spGETCustomer 1

-- Takes one input parameter and returns Two output parameters

USE myWoodFlooringBusiness;
GO 
CREATE PROC spCustomerName
		@CustomerID int,
		@FName nvarchar(20) OUTPUT,
		@LName nvarchar(30) OUTPUT
AS
SELECT @FName = FName, @LName = LName
FROM Customers
WHERE CustomerID  = @CustomerID;
GO
-- Run the procedure
DECLARE @FName nvarchar(20);
DECLARE @LName nvarchar(30);
EXEC spCustomerName 4, @FName OUTPUT, @LName OUTPUT;
SELECT @FName AS 'First Name', @LName AS 'Last Name';

-- Stored procedure that has a return value 

USE myWoodFlooringBusiness;
GO
CREATE PROC spCustomrCount
AS
DECLARE @CustomerCount int;
SELECT @CustomerCount = COUNT(*)
FROM Customers
RETURN @CustomerCount;
GO

DECLARE @CustomerCount int;
EXEC @CustomerCount = spCustomrCount;
PRINT 'There are ' + CONVERT(varchar, @CustomerCount) + ' customers in your database';
GO*/ 

/* Final Project User Defined Functions

-- creates the function

USE myWoodFlooringBusiness;
GO
CREATE FUNCTION fnGetInv(@InvName nvarchar(50) = '%')
	RETURNS int
BEGIN
RETURN (SELECT FloorID FROM Inventory WHERE FlooringType Like @InvName);
END; 

GO
SELECT FloorID, FlooringType FROM Inventory
WHERE FloorID = dbo.fnGetInv('Oak%');

USE myWoodFlooringBusiness;
GO
CREATE FUNCTION fnOrders
(@OrderID int)
RETURNS table
Return
(SELECT * FROM Orders WHERE @OrderID=Orders.OrderID);

SELECT * FROM dbo.fnOrders(1);
SELECT * FROM dbo.fnOrders(2);
SELECT * FROM dbo.fnOrders(3);*/

/* Final Project Triggers*


 --Final Project Triggers--


 USE myWoodFlooringBusiness;
GO
SELECT * Into InstallersTransaction
FROM Installers


/*CREATE TRIGGER InstallersTransaction_INSERT ON Installers
 AFTER INSERT
 AS
 BEGIN
 SET NOCOUNT ON;
 DECLARE @InstallerID int
 DECLARE @FName nvarchar(30)
 DECLARE @LName nvarchar(30)
 
 SELECT @InstallerID= INSERTED.InstallerID, @LName = INSERTED.FName, @LName=INSERTED.LName
 FROM INSERTED

 INSERT INTO  InstallersTransaction VALUES(@InstallerID,@FName, @LName,  'Inserted' 
 )
END
GO

INSERT INTO Installers VALUES(82, 'Jokers','Bills');
GO

/*USE myWoodFlooringBusiness
SELECT * FROM InstallersTransaction;
GO

CREATE TRIGGER InstallersTransaction_Update ON Installers
 AFTER UPDATE
 AS
 BEGIN
 SET NOCOUNT ON;
 DECLARE @InstallerID int
 DECLARE @FName nvarchar(30)
 DECLARE @LName nvarchar(30)8

  SELECT @InstallerID= INSERTED.InstallerID, @LName = INSERTED.FName, @LName=INSERTED.LName
 FROM INSERTED


 INSERT INTO  InstallersTransaction VALUES(@InstallerID,@FName, @LName,  'Updated' )
END
GO
INSERT INTO Installers VALUES(90,'Joe','Tom');
GO
UPDATE Installers 
SET FName = 'YES'
WHERE InstallerID = 90;
GO*/

USE myWoodFlooringBusiness
SELECT * FROM InstallersTransaction;
GO








