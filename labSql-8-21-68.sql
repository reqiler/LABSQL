--
SELECT CategoryName, ProductName, UnitPrice FROM Products as p, Categories as c WHERE p.CategoryID=c.CategoryID
AND CategoryName = 'seafood';

SELECT CategoryName, ProductName, UnitPrice FROM Products as p JOIN Categories as c ON p.CategoryID=c.CategoryID
WHERE CategoryName = 'seafood';

--
SELECT CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia

SELECT CompanyName, OrderID
FROM Orders JOIN Shippers
ON Shippers.ShipperID = Orders.Shipvia

--
SELECT CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia
AND OrderID = 10275

SELECT CompanyName, OrderID
FROM Orders JOIN Shippers
ON Shippers.ShipperID=Orders.Shipvia
WHERE OrderID=10275

--
SELECT Products.ProductID, Products.ProductName, Suppliers.CompanyName, Suppliers.Country FROM Products JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Country in ('usa', 'uk')

--
SELECT e.EmployeeID, FirstName, o.OrderID FROM Employees as e JOIN Orders as o ON e.EmployeeID=o.EmployeeID 
order by EmployeeID

--
