Select * From Products;
Select * From Categories;
Select * From Customers;

Select * From Employees;
Select EmployeeID, FirstName, LastName From Employees;
Select * From Employees Where City = 'London'; 
Select EmployeeID, FirstName, LastName From Employees Where City = 'London';

Select City, Country FROM Customers;
SELECT DISTINCT City, Country From Customers;

SELECT * FROM Products WHERE Unitprice > 200;
SELECT * FROM Customers WHERE City ='London' OR City ='Vancouver';
SELECT * FROM Customers WHERE Country = 'USA' OR City = 'Vancouver';
SELECT * FROM Products WHERE UnitPrice >= 50 AND UnitsInStock < 20;
SELECT * FROM Products WHERE UnitPrice BETWEEN 100 AND 150;
SELECT * FROM Products WHERE UnitPrice >= 50 AND UnitPrice<=100;
SELECT * FROM Customers WHERE Country IN ('Brazil','Argentina','Mexico');
SELECT * FROM Employees WHERE FirstName LIKE 'N%';
SELECT * FROM Customers WHERE CompanyName LIKE 'A%';
