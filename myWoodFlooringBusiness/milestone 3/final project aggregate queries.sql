
/*#1

USE myWoodFlooringBusiness;
SELECT MIN(Inventory.Price) AS [Minimum Price Per Item],
		MAX(Inventory.Price) AS [Maximum Price Per Item]
FROM Inventory;

#2

USE myWoodFlooringBusiness;
SELECT AVG(Inventory.Price) AS [Maximum Price Per Item]
FROM Inventory;

#3

SELECT ZipCode.State, COUNT(DISTINCT Customers.CustomerID) AS [Customers per State]
FROM Customers JOIN ZipCode ON Customers.ZipCodeID = ZipCode.ZipCodeID
GROUP BY ZipCode.State;

#4
USE myWoodFlooringBusiness;
SELECT ZipCode.City, COUNT(Orders.OrderID) AS [Number of Orders]
FROM Customers JOIN ZipCode ON ZipCode.ZipCodeID = Customers.ZipCodeID
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY ZipCode.City
ORDER BY ZipCode.City;*/