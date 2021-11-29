/*USE myWoodFlooringBusiness
GO
INSERT INTO Inventory VALUES (1,'Oak','Shaw',1,2.00,5.00)
INSERT INTO Inventory VALUES (2,'Walnut','Aha',1,10.00,14.00)
INSERT INTO Inventory VALUES (3,'Ash','Best Floors',1,5.00,8.00)
INSERT INTO Inventory VALUES (4,'Walnut','Tims',1,6.00,9.00)
INSERT INTO Inventory VALUES (5,'Hickory','Mohawk',1,7.00,10.00)
INSERT INTO Inventory VALUES (6,'Pine','New World',1,8.00,11.00)

INSERT INTO ZipCode VALUES(11111, 'Quahog', 'RI')
INSERT INTO ZipCode VALUES(22222, 'Providence', 'RI')
INSERT INTO ZipCode VALUES(55555, 'Pawtucket', 'RI')
INSERT INTO ZipCode VALUES(67889, 'Newport', 'RI')
INSERT INTO ZipCode VALUES(65366, 'Newport', 'RI')
INSERT INTO ZipCode VALUES(14534, 'Cranston', 'RI')

INSERT INTO Installers VALUES(1,'Joe', 'Tom')
INSERT INTO Installers VALUES(2,'Bob', 'Rob')
INSERT INTO Installers VALUES(3,'Brian', 'Griffen')
INSERT INTO Installers VALUES(4,'Jane', 'Doe')
INSERT INTO Installers VALUES(5,'Man', 'Guy')
INSERT INTO Installers VALUES(6,'Zack', 'Wonder')

SELECT * FROM Installers;

INSERT INTO Customers VALUES(1, 'Might', 'Guy', '777 Leaf Village', 11111, '999-999-9999', 'Credit Card')
INSERT INTO Customers VALUES(2, 'Jim','Bob', '190 Jim Ave', 22222, '999-999-9999', 'Credit Card')
INSERT INTO Customers VALUES(3, 'Peter', 'Griffen', '31Spooner St', 55555, '999-999-9999', 'Credit Card')
INSERT INTO Customers VALUES(4, 'Morty', 'Smith', '123 Smith St', 67889, '999-999-9999', 'Credit Card')
INSERT INTO Customers VALUES(5, 'Rick', 'Sanchez', '123 Smith St', 65366, '999-999-9999', 'Credit Card')
INSERT INTO Customers VALUES(6, 'Walter', 'White', '308 Negra Arroyo Lane', 14534, '999-999-9999', 'Credit Card')

SELECT * FROM Customers;

INSERT INTO Orders VALUES(1,1,'1/2/2021','2/1/2021')
INSERT INTO Orders VALUES(2,2,'1/3/2021','2/2/2021')
INSERT INTO Orders VALUES(3,3,'1/4/2021','2/3/2021')
INSERT INTO Orders VALUES(4,4,'1/5/2021','2/4/2021')
INSERT INTO Orders VALUES(5,5,'1/6/2021','2/5/2021')
INSERT INTO Orders VALUES(6,6,'1/7/2021','2/6/2021')

SELECT * FROM Orders;

INSERT INTO OrderDetail VALUES(1,1,'Bedroom',1,1000,1)
INSERT INTO OrderDetail VALUES(2,1,'Kitchen',2,5000,2)
INSERT INTO OrderDetail VALUES(3,2,'Basement',3,1000,3)
INSERT INTO OrderDetail VALUES(4,3,'All',4,10000,4)
INSERT INTO OrderDetail VALUES(5,4,'All',4,6000,5)
INSERT INTO OrderDetail VALUES(6,5,'All',1,8000,6)
INSERT INTO OrderDetail VALUES(7,6,'Bedrooms',1,1400,1)

SELECT * FROM OrderDetail;*/

