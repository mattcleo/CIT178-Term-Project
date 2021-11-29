USE myWoodFlooringBusiness;
GO
CREATE INDEX idx_ZipCodeID ON Customers(ZipCodeID);
GO
CREATE INDEX idx_CustomerID ON Orders(CustomerID);
GO
CREATE INDEX idx_OrderID ON OrderDetail(OrderID);
GO
CREATE INDEX idx_FloorID ON OrderDetail(FloorID);
GO
CREATE INDEX idx_InstallerID ON OrderDetail(InstallerID);