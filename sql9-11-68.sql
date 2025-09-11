--1
SELECT Title FROM Employees WHERE FirstName = 'Nancy'
--2
SELECT * FROM Employees WHERE Title = (SELECT Title FROM Employees WHERE FirstName = 'Nancy')
--3
SELECT FirstName, LastName FROM Employees WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees)
--4
SELECT ProductName FROM Products WHERE UnitPrice = (SELECT UnitPrice FROM Products WHERE ProductName = 'Ikura')
--5
SELECT CompanyName FROM Customers WHERE city = ( SELECT City FROM Customers WHERE CompanyName = 'Around the Horn')
--6
SELECT FirstName, LastName FROM Employees WHERE HireDate = (SELECT MAX(HireDate) FROM Employees)
--7
SELECT * FROM Orders WHERE shipcountry not in (SELECT DISTINCT Country FROM Suppliers)
--8
SELECT ROW_NUMBER() OVER (ORDER BY UnitPrice DESC) AS RowNum, ProductName, UnitPrice
 FROM Products WHERE UnitPrice < 50
--9
SELECT * FROM Shippers

INSERT INTO Shippers
VALUES('abc', '083-12345678')

INSERT INTO Shippers
VALUES(0, 'abc', '083-12345678')

INSERT INTO Shippers(CompanyName)
VALUES('บริษัทซื้อเยอะจำกัด')

--10
SELECT * FROM Customers

INSERT INTO Customers(CustomerID, CompanyName)
VALUES('A0001', 'บริษัทซื้อเยอะจำกัด')

--11
SELECT * FROM Employees

INSERT INTO Employees(FirstName, LastName)
VALUES('Suteerapat', 'Kansomprot')

--12
SELECT * FROM Products

INSERT INTO Products(ProductName, UnitPrice, UnitsInStock)
VALUES('ปลาแดกบอง', 1.5, 12)

--13
SELECT * FROM Shippers

UPDATE Shippers SET Phone = '058-9898989' WHERE ShipperID = 6

--14
SELECT * FROM Products

UPDATE Products SET UnitsInStock = UnitsInStock+100 WHERE ProductID = 1

--15
UPDATE Customers SET City = 'Udonthani', Country = 'Thailand' WHERE CustomerID = 'A0001'

--16
DELETE FROM Products WHERE ProductID = 78

DELETE FROM Shippers WHERE ShipperID = 6

