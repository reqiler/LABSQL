--1
Select EmployeeID, TitleOfCourtesy , FirstName, LastName From Employees WHERE Country = 'USA';

--2
Select * From Products WHERE CategoryID in (1,2,4,8) and UnitPrice BETWEEN 100 and 200;

--3
Select Country, City, CompanyName, ContactName, Phone From Customers WHERE Region = 'WA' or Region = 'WY';

--4
Select * From Products WHERE (CategoryID = 1 and UnitPrice <= 20) or (CategoryID = 8 and UnitPrice >= 50);

--5
Select CompanyName From Customers WHERE fax is null order by CompanyName;

--6
Select * From Customers WHERE CompanyName like '%com%';

