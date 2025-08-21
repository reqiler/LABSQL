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
SELECT O.OrderID เลขใบสั่งซื้อ, C.CompanyName ลูกค้า,
E.FirstName พนักงาน, O.ShipAddress ส่งไปที่
FROM Orders O
join Customers C on O.CustomerID=C.CustomerID
join Employees E on O.EmployeeID=E.EmployeeID

select e.EmployeeID, FirstName , count(*) as [จำนวน order]
, sum(freight) as [Sum of Freight]
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
where year(orderdate) = 1998
group by e.EmployeeID, FirstName

--
SELECT s.CompanyName, count(OrderID) as [จำนวน orders] FROM Shippers as s JOIN Orders as o ON s.ShipperID=o.ShipVia
GROUP BY s.CompanyName ORDER BY 2 DESC

--
SELECT p.ProductID, p.ProductName, sum(Quantity) as จำนวนที่ขายได้ FROM Products as p JOIN [Order Details] od on p.ProductID=od.ProductID
GROUP BY p.ProductID, p.ProductName ORDER BY 3 desc

--
SELECT distinct p.ProductID, p.ProductName
FROM Employees as e JOIN Orders as o on e.EmployeeID=o.EmployeeID
                    JOIN [Order Details] od on o.OrderID=od.OrderID
                    JOIN Products as p on p.ProductID=od.ProductID
WHERE e.FirstName = 'Nancy'
order by ProductID
