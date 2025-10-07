Select * from HumanResources.Department;
Select * from HumanResources.Employee;
select * from Person.Password;
select * from [Production].[BillOfMaterials];
create database exploredb;
use exploredb;
select @@VERSION;
select * from 

use AdventureWorksLT2019;
--1
select * from SalesLT.Customer;
--2
select * from SalesLT.Product;
--3
SELECT FirstName,LastName,EmailAddress FROM SalesLT.Customer;
--4
select Name,ListPrice from SalesLT.Product;
--5
select count(*) as totalcustomers from SalesLT.Customer; 
--6
select count(*) as totalproducts from SalesLT.Product;
--7
select distinct color from SalesLT.Product where Color is not null;
--8
select top 10 name,listprice from SalesLT.Product order by ListPrice desc;
--9
select * from SalesLT.SalesOrderHeader;
--10
select name,productnumber,standardcost from SalesLT.Product where SellEndDate is null;
--11
select name,listprice from SalesLT.Product where ListPrice>1000;
--12
select firstname,lastname,companyname from SalesLT.Customer c 
join SalesLT.CustomerAddress ca on c.CustomerID=ca.CustomerID
join SalesLT.Address a on ca.AddressID=a.AddressID
where a.city='Seattle';
--13
select Name,color,listprice from SalesLT.Product where color='red';
--14
select salesorderid,orderdate,totaldue from SalesLT.SalesOrderHeader where year(orderdate)=2008;
--
select getdate() as currentdatetime;
--
select format(getdate(),'dd/MM/yy')as formateddate;
--
select month(getdate()) as currentmonth;
--15
select name,listprice from SalesLT.Product where ListPrice between 100 and 500;
--16
select firstname,lastname from SalesLT.Customer where EmailAddress like '%adventure-works.com';
--17
select name from  SalesLT.Product where name like 'Mountain%';
--18
select * from SalesLT.Product;
select * from SalesLT.Product where  color is null;
--19
select * from SalesLT.Customer;
select * from SalesLT.Customer where phone is not null;
--20
select * from SalesLT.ProductCategory;
select p.name,pc.name from SalesLT.Product p join SalesLT.ProductCategory pc 
on p.ProductCategoryID=pc.ProductCategoryID where pc.Name in ('Helmets','Gloves') ;
--21
select avg(listprice) as avgprice from salesLT.Product;

select count_big(*) as totalproducts from SalesLT.Product;
																				
SELECT APPROX_COUNT_DISTINCT(COLOR) FROM SalesLT.Product WHERE COLOR IS NOT NULL
--22
select sum(totaldue) as totalsales from SalesLT.SalesOrderHeader;
--23
select max(listprice) from SalesLT.Product;
--24
select min(listprice) from SalesLT.Product where ListPrice>0;
--25
SELECT Color, COUNT(*) AS ProductCount;
FROM SalesLT.Product 
WHERE Color IS NOT NULL 
GROUP BY Color;
--26
SELECT YEAR(OrderDate) AS OrderYear,
AVG(TotalDue) AS AverageTotalDue
FROM SalesLT.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;
--27
SELECT P.Name AS ProductName,
SUM(SOD.OrderQty) AS TotalUnitsSold
FROM SalesLT.SalesOrderDetail SOD
JOIN SalesLT.Product P ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalUnitsSold DESC;
--28
SELECT CustomerID,
COUNT(SalesOrderID) AS OrdersPlaced
FROM SalesLT.SalesOrderHeader
GROUP BY CustomerID
ORDER BY OrdersPlaced DESC;
--29
SELECT PC.Name AS CategoryName,
AVG(P.ListPrice) AS AveragePrice
FROM SalesLT.Product P
JOIN SalesLT.ProductCategory PC ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY PC.Name
ORDER BY AveragePrice DESC;
--30
SELECT YEAR(OrderDate) AS OrderYear,
MONTH(OrderDate) AS OrderMonth,
SUM(TotalDue) AS MonthlySales
FROM SalesLT.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth;
--31
SELECT  p.Name AS ProductName, pc.Name AS CategoryName
FROM SalesLT.Product AS p
INNER JOIN SalesLT.ProductCategory AS pc ON p.ProductCategoryID = pc.ProductCategoryID;
--32
SELECT soh.SalesOrderID, c.FirstName, c.LastName, soh.OrderDate, soh.TotalDue
FROM SalesLT.SalesOrderHeader AS soh
INNER JOIN SalesLT.Customer AS c ON soh.CustomerID = c.CustomerID;
--33
SELECT sod.SalesOrderID, p.Name AS ProductName, sod.OrderQty, sod.UnitPrice, sod.LineTotal
FROM SalesLT.SalesOrderDetail AS sod
INNER JOIN SalesLT.Product AS p ON sod.ProductID = p.ProductID;
--34
SELECT c.FirstName, c.LastName, a.AddressLine1, a.City, a.StateProvince, a.PostalCode
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.CustomerAddress AS ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID;
--35
SELECT p.Name AS ProductName, pc.Name AS CategoryName, ppc.Name AS ParentCategoryName
FROM SalesLT.Product AS p
INNER JOIN SalesLT.ProductCategory AS pc ON p.ProductCategoryID = pc.ProductCategoryID
LEFT JOIN SalesLT.ProductCategory AS ppc ON pc.ParentProductCategoryID = ppc.ProductCategoryID;
--36
SELECT soh.SalesOrderID,c.FirstName + ' ' + c.LastName AS CustomerName,
p.Name AS ProductName,sod.OrderQty,sod.UnitPrice,sod.LineTotal
FROM SalesLT.SalesOrderHeader AS soh
INNER JOIN SalesLT.Customer AS c ON soh.CustomerID = c.CustomerID
INNER JOIN SalesLT.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN SalesLT.Product AS p ON sod.ProductID = p.ProductID;
--37
SELECT p.Name
FROM SalesLT.Product AS p
LEFT JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
WHERE sod.SalesOrderDetailID IS NULL;
--38
SELECT c.FirstName, c.LastName, SUM(soh.TotalDue) AS TotalSpending
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpending DESC;
--39
SELECT pm.Name AS ModelName, pd.Description
FROM SalesLT.ProductModel AS pm
INNER JOIN SalesLT.ProductModelProductDescription AS pmpd ON pm.ProductModelID = pmpd.ProductModelID
INNER JOIN SalesLT.ProductDescription AS pd ON pmpd.ProductDescriptionID = pd.ProductDescriptionID
WHERE pmpd.Culture = 'en';
--40
SELECT soh.SalesOrderID, a.AddressLine1, a.City, a.StateProvince, a.CountryRegion, a.PostalCode
FROM SalesLT.SalesOrderHeader AS soh
INNER JOIN SalesLT.Address AS a ON soh.ShipToAddressID = a.AddressID;
--41
SELECT pc.Name AS CategoryName, COUNT(p.ProductID) AS NumberOfProducts
FROM SalesLT.ProductCategory AS pc
JOIN SalesLT.Product AS p ON pc.ProductCategoryID = p.ProductCategoryID
GROUP BY pc.Name
HAVING COUNT(p.ProductID) > 10;
--42
SELECT c.CustomerID, c.FirstName, c.LastName, SUM(soh.TotalDue) AS TotalSpent
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING SUM(soh.TotalDue) > 10000;
--43
SELECT p.Name, SUM(sod.OrderQty) AS TotalUnitsSold
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
HAVING SUM(sod.OrderQty) > 100;
--44
SELECT Color, AVG(ListPrice) AS AveragePrice
FROM SalesLT.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING AVG(ListPrice) > 500;
--45
SELECT YEAR(OrderDate) AS OrderYear, SUM(TotalDue) AS TotalSales
FROM SalesLT.SalesOrderHeader
GROUP BY YEAR(OrderDate)
HAVING SUM(TotalDue) > 1000000;
--46
SELECT c.CustomerID, c.FirstName, c.LastName, COUNT(soh.SalesOrderID) AS OrderCount
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING COUNT(soh.SalesOrderID) > 3;
--47
SELECT p.Name, AVG(CAST(sod.OrderQty AS DECIMAL(10, 2))) AS AvgOrderQty
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
HAVING AVG(CAST(sod.OrderQty AS DECIMAL(10, 2))) > 5;
--48
SELECT a.City, COUNT(DISTINCT c.CustomerID) AS CustomerCount
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
GROUP BY a.City
HAVING COUNT(DISTINCT c.CustomerID) > 5;
--49
SELECT pc.Name AS CategoryName, SUM(sod.LineTotal) AS TotalCategorySales
FROM SalesLT.ProductCategory AS pc
JOIN SalesLT.Product AS p ON pc.ProductCategoryID = p.ProductCategoryID
JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY pc.Name
HAVING SUM(sod.LineTotal) > 50000;
--50
SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, COUNT(SalesOrderID) AS OrderCount
FROM SalesLT.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(SalesOrderID) > 50;
--51
SELECT Name, ListPrice
FROM SalesLT.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM SalesLT.Product);
--52
SELECT FirstName, LastName
FROM SalesLT.Customer
WHERE CustomerID IN (SELECT CustomerID FROM SalesLT.SalesOrderHeader WHERE YEAR(OrderDate) = 2008);
--53
SELECT pc.Name AS CategoryName, p.Name AS ProductName, p.ListPrice
FROM SalesLT.Product AS p
JOIN SalesLT.ProductCategory AS pc ON p.ProductCategoryID = pc.ProductCategoryID
WHERE p.ListPrice = (
    SELECT MAX(p2.ListPrice)
    FROM SalesLT.Product AS p2
    WHERE p2.ProductCategoryID = p.ProductCategoryID
);
--54
WITH CustomerTotal AS (
    SELECT CustomerID, SUM(TotalDue) AS TotalSpent
    FROM SalesLT.SalesOrderHeader
    GROUP BY CustomerID
)
SELECT c.FirstName, c.LastName, ct.TotalSpent
FROM CustomerTotal AS ct
JOIN SalesLT.Customer AS c ON ct.CustomerID = c.CustomerID
WHERE ct.TotalSpent > (SELECT AVG(TotalSpent) FROM CustomerTotal);
--55
SELECT Name
FROM SalesLT.Product
WHERE ProductID NOT IN (SELECT DISTINCT ProductID FROM SalesLT.SalesOrderDetail);
--56
SELECT SalesOrderID, TotalDue
FROM SalesLT.SalesOrderHeader
WHERE TotalDue > (SELECT AVG(TotalDue) FROM SalesLT.SalesOrderHeader);
--57
SELECT TOP 5 c.FirstName, c.LastName, SUM(soh.TotalDue) AS TotalPurchases
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalPurchases DESC;
--58
SELECT Name, ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID = (
SELECT TOP 1 ProductCategoryID
FROM SalesLT.Product
GROUP BY ProductCategoryID
ORDER BY AVG(ListPrice) DESC
);
--59
SELECT c.FirstName, c.LastName, a.City
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
WHERE a.City IN (
SELECT TOP 3 City
FROM SalesLT.Address AS addr
JOIN SalesLT.CustomerAddress AS custaddr ON addr.AddressID = custaddr.AddressID
GROUP BY City
ORDER BY COUNT(DISTINCT custaddr.CustomerID) DESC
);
--60
SELECT p1.Name, p1.ListPrice
FROM SalesLT.Product AS p1
WHERE p1.ListPrice > (
    SELECT AVG(p2.ListPrice)
    FROM SalesLT.Product AS p2
    WHERE p2.ProductCategoryID = p1.ProductCategoryID
);

--DDL

CREATE TABLE EMPLOYEES(
EMPLOYEEID INT PRIMARY KEY,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
EMAIL VARCHAR(100),
HIREDATE DATE,
SALARY DECIMAL(10,2),
DEPARTMENTID INT);

CREATE TABLE DEPARTMENTS1(
DEPARTMENTID INT PRIMARY KEY,
DEPARTMENTNAME VARCHAR(50),
"LOCATION" VARCHAR(100));

ALTER TABLE EMPLOYEES ADD PHONENUMBER VARCHAR(15);
ALTER TABLE EMPLOYEES ALTER COLUMN EMAIL VARCHAR(150);
ALTER TABLE EMPLOYEES DROP COLUMN PHONENUMBER;

--DML
INSERT INTO DEPARTMENTS1 VALUES(1,'IT','NEW YORK'),
(2,'HR','CHICAGO'),(3,'SALES','LOS ANGELES');
SELECT * FROM DEPARTMENTS1;

INSERT INTO EMPLOYEES VALUES
(1,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
SELECT * FROM EMPLOYEES;

INSERT INTO EMPLOYEES VALUES
(4,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
INSERT INTO EMPLOYEES VALUES
(5,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
INSERT INTO EMPLOYEES VALUES
(66,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
INSERT INTO EMPLOYEES VALUES
(77,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
INSERT INTO EMPLOYEES VALUES
(88,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);
INSERT INTO EMPLOYEES VALUES
(99,'JANE','JOHN','JANE.JOHN@GMAIL.COM','2019-01-01',989898.9,2);


UPDATE EMPLOYEES SET SALARY=780000 WHERE EMPLOYEEID=1;

DELETE FROM EMPLOYEES WHERE EMPLOYEEID=6;

DELETE FROM EMPLOYEES WHERE SALARY=9998997;

--TRANSACTION

BEGIN TRANSACTION;
INSERT INTO EMPLOYEES VALUES
(6,'ANNA','DAVIS','ANNA.DAVIS@GMAIL.COM','2011-09-09',7888888.99,3);

UPDATE EMPLOYEES SET SALARY=SALARY*1000000000000000000000000009090909090 WHERE DEPARTMENTID=2;

ROLLBACK;

BEGIN TRANSACTION;

INSERT INTO

COMMIT;

GO;


--OFFSET FETCH(PAGINATION)
SELECT * FROM EMPLOYEES 
ORDER BY EMPLOYEEID
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

SELECT * FROM EMPLOYEES


SELECT ROUND(1256.8944,1)
SELECT FLOOR(1.2)

SELECT HIREDATE,DATEADD(YEAR,1,HIREDATE)AS ONEYEARLEATER FROM EMPLOYEES;

SELECT HIREDATE,DATEADD(YEAR,1,HIREDATE)AS ONEYEARLEATER FROM EMPLOYEES;


-- ============================================
-- 1. DATA DEFINITION LANGUAGE (DDL)
-- ============================================

CREATE DATABASE SQLWORKS2;
USE SQLWORKS2;
-- Creating Tables
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    "Location" VARCHAR(100)
);

-- Altering Table Structure
-- Add a new column
ALTER TABLE Employees ADD PhoneNumber VARCHAR(15);

-- Modify column data type
ALTER TABLE Employees ALTER COLUMN Email VARCHAR(150);

-- Drop a column
ALTER TABLE Employees DROP COLUMN PhoneNumber;

-- Removing a Table
DROP TABLE IF EXISTS EMPLOYEES, DEPARTMENTS;

-- ============================================
-- 2. DATA MANIPULATION LANGUAGE (DML)
-- ============================================

-- Insert sample departments
INSERT INTO Departments (DepartmentID, DepartmentName, Location)
VALUES (1, 'IT', 'New York'),
       (2, 'HR', 'Chicago'),
       (3, 'Sales', 'Los Angeles');

-- Inserting Rows (Multiple Methods)
-- Single row insert
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID)
VALUES (1, 'John', 'Doe', 'john.doe@company.com', '2020-01-15', 75000.00, 1);

-- Multiple rows insert
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID)
VALUES 
    (2, 'Jane', 'Smith', 'jane.smith@company.com', '2019-03-20', 82000.00, 2),
    (3, 'Mike', 'Johnson', 'mike.j@company.com', '2021-06-10', 68000.00, 3),
    (4, 'Sarah', 'Williams', 'sarah.w@company.com', '2018-11-05', 95000.00, 1),
    (5, 'Tom', 'Brown', 'tom.brown@company.com', '2022-02-14', 71000.00, 2);
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
-- Updating Rows
-- Update single row
UPDATE Employees 
SET Salary = 78000.00 
WHERE EmployeeID = 1;

-- Update multiple rows
UPDATE Employees 
SET Salary = Salary * 1.10 
WHERE DepartmentID = 1;

-- Deleting Rows
-- Delete specific row
DELETE FROM Employees WHERE EmployeeID = 5;

-- Delete with condition
DELETE FROM Employees WHERE Salary < 70000;
GO;

SET IMPLICIT_TRANSACTIONS ON;
-- Transaction Processing
BEGIN TRANSACTION;
    INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID)
    VALUES (8, 'TRAN', 'Davis', 'anna.d@company.com', '2023-01-10', 72000.00, 3);
    UPDATE Employees SET Salary = Salary * 10000000000000000000 WHERE DepartmentID = 2;
ROLLBACK;


BEGIN TRANSACTION;
    INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID)
    VALUES (8, 'TRAN', 'Davis', 'anna.d@company.com', '2023-01-10', 72000.00, 3);
    UPDATE Employees SET Salary = Salary * 10 WHERE DepartmentID = 2;
COMMIT;
GO; -- Save changes

SELECT * FROM EMPLOYEES;
-- Rollback example
BEGIN TRANSACTION;
    DELETE FROM Employees WHERE DepartmentID = 3;
    DELETE FROM Employees WHERE DepartmentID = 1;
ROLLBACK; -- Undo changes

-- ============================================
-- 3. DATA RETRIEVAL
-- ============================================

-- Basic SELECT statement
SELECT * FROM Employees;

-- Select specific columns
SELECT FirstName, LastName, Salary FROM Employees;

-- SELECT with DISTINCT
SELECT DISTINCT DepartmentID FROM Employees;

-- Queries Based on Conditions (WHERE clause)
SELECT * FROM Employees WHERE Salary > 75000;

SELECT FirstName, LastName FROM Employees WHERE DepartmentID = 1;

SELECT * FROM Employees WHERE HireDate >= '2020-01-01';

-- Queries Using Operators
-- Comparison operators
SELECT * FROM Employees WHERE Salary BETWEEN 70000 AND 85000;

-- IN operator
SELECT * FROM Employees WHERE DepartmentID IN (1, 2);

-- LIKE operator (pattern matching)
SELECT * FROM Employees WHERE FirstName LIKE 'J%';

SELECT * FROM Employees WHERE Email LIKE '%@company.com';

-- AND, OR, NOT operators
SELECT * FROM Employees 
WHERE Salary > 70000 AND DepartmentID = 1;

SELECT * FROM Employees 
WHERE DepartmentID = 1 OR DepartmentID = 3;

SELECT * FROM Employees 
WHERE NOT DepartmentID = 2;

-- IS NULL / IS NOT NULL
SELECT * FROM Employees WHERE Email IS NOT NULL;

-- Setting Query Results
-- ORDER BY
SELECT * FROM Employees ORDER BY Salary DESC;

SELECT FirstName, LastName, HireDate 
FROM Employees 
ORDER BY HireDate ASC;

-- TOP / LIMIT (SQL Server uses TOP)
SELECT TOP 3 * FROM Employees ORDER BY Salary DESC;

-- OFFSET FETCH (pagination)
SELECT * FROM Employees 
ORDER BY EmployeeID 
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;
-- The offset is used to skip rows. Here it skips the first 2 rows and fetches the next 3 rows.

-- ============================================
-- 4. SQL FUNCTIONS
-- ============================================

-- SINGLE ROW FUNCTIONS

-- Character Functions
-- UPPER, LOWER
SELECT FirstName, UPPER(FirstName) AS UpperName, LOWER(LastName) AS LowerName 
FROM Employees;

-- SUBSTRING
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS ShortName 
FROM Employees;

-- LEN / LENGTH
SELECT FirstName, LEN(FirstName) AS NameLength 
FROM Employees;

-- CONCAT
SELECT CONCAT(FirstName, '                       ', LastName) AS FullName 
FROM Employees;

-- LTRIM, RTRIM, TRIM
SELECT RTRIM('                       Hello World  ') AS TrimmedText;

-- REPLACE
SELECT Email, REPLACE(Email, 'company.com', 'newdomain.com') AS NewEmail 
FROM Employees;

-- Number Functions
-- ROUND
SELECT Salary, ROUND(Salary, 0) AS RoundedSalary 
FROM Employees;

SELECT ROUND(1234.567, 0);
SELECT ROUND(1234.467, 0);
SELECT ROUND(1234.567, -1);
SELECT ROUND(1234.567, 1);
SELECT ROUND(1256.567, -2) AS 'ROUNDED VALUE';  

SELECT ROUND(-1234.567, 0);
SELECT ROUND(-1234.467, 0);
SELECT ROUND(-1234.567, -1);
SELECT ROUND(-1254.567, -2);
SELECT ROUND(-1256.567, -3) AS 'ROUNDED VALUE';  
SELECT ROUND(-1256.567, -2) AS 'ROUNDED VALUE';


-- 5 EXAMPLES FOR CEILING AND FLOOR
SELECT FLOOR(1.2);  
SELECT CEILING (1.6);  
SELECT FLOOR(-1.2);  
SELECT CEILING (-1.6);  



SELECT CEILING (1.2);  
SELECT FLOOR(-1.8);                    

-- CEILING, FLOOR
SELECT Salary, CEILING(Salary/1000) * 1000 AS CeilingSalary,
       FLOOR(Salary/1000) * 1000 AS FloorSalary
FROM Employees;

-- ABS (absolute value)
SELECT ABS(-150) AS AbsoluteValue;

-- POWER, SQRT
SELECT POWER(2, 3) AS PowerResult, SQRT(16) AS SquareRoot;

-- Date Functions
-- GETDATE (current date/time)
SELECT GETDATE() AS CurrentDateTime;

-- DATEADD
SELECT HireDate, DATEADD(YEAR, 1, HireDate) AS OneYearLater 
FROM Employees;

-- DATEDIFF
SELECT FirstName, HireDate, 
       DATEDIFF(DAY, HireDate, GETDATE()) AS DaysEmployed 
FROM Employees;

-- YEAR, MONTH, DAY
SELECT HireDate, YEAR(HireDate) AS HireYear, 
       MONTH(HireDate) AS HireMonth, 
       DAY(HireDate) AS HireDay 
FROM Employees;

-- FORMAT (date formatting)
SELECT HireDate, FORMAT(HireDate, 'MM/dd/yyyy') AS FormattedDate 
FROM Employees;


--TABULATION OF COMMON DATE FORMATS
--'d' -SHORTDATE PATTERN (E.G 6/15/2009)
SELECT FORMAT (HIREDATE,'d') AS SHORTDATE FROM EMPLOYEES;

--'D' -LONGDATE PATTERN (E.G MONDAY,JUNE 15,2009)
SELECT FORMAT (HIREDATE,'D') AS LONGDATE FROM EMPLOYEES;

--'t' -SHORT TIME PATTERN(E.G. 6.30 PM)
SELECT FORMAT (HIREDATE,'t') AS SHORTTIME FROM EMPLOYEES;

--'T' -LONG TIME PATTERN(E.G. 6.30:00 PM)
SELECT FORMAT (HIREDATE,'T') AS LONGTIME FROM EMPLOYEES;

--'f' -FULL DATE/TIME PATTERN (SHORT TIME)
SELECT FORMAT (HIREDATE,'f') AS FULLTIME FROM EMPLOYEES;

--'f' -FULL DATE/TIME PATTERN (LONG TIME)
SELECT FORMAT (HIREDATE,'F') AS FULLTIME FROM EMPLOYEES;

-- Conversion Functions
-- CAST
SELECT Salary, CAST(Salary AS INT) AS IntSalary 
FROM Employees;

-- CONVERT
--*******************************************************************************
--101=MM/DD/YYYY
--102=YYYY.MM.DD
--103=DD/MM/YYYY
--104=DD.MM.YYYY
--*******************************************************************************
SELECT HireDate, CONVERT(VARCHAR, HireDate, 103) AS USDate 
FROM Employees;

-- TRY_CAST (returns NULL if conversion fails)
SELECT TRY_CAST('123' AS INT) AS ValidNumber,
TRY_CAST('ABC' AS INT) AS InvalidNumber;

-- GROUP FUNCTIONS (Aggregate Functions)
-- COUNT
SELECT COUNT(*) AS TotalEmployees FROM Employees;

SELECT DepartmentID, COUNT(*) AS EmployeeCount 
FROM Employees 
GROUP BY DepartmentID;

-- SUM
SELECT SUM(Salary) AS TotalSalary FROM Employees;

-- AVG
SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT DepartmentID, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY DepartmentID;

-- MAX, MIN
SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary 
FROM Employees;

--GROUP BY WITH HAVING
SELECT DEPARTMENTID,AVG(SALARY) AS AVGSALARY
FROM EMPLOYEES
GROUP BY DEPARTMENTID
HAVING AVG(SALARY) >75000;


-----------JOINS--------------
SELECT E.FIRSTNAME,E.LASTNAME,D.DEPARTMENTNAME 
FROM EMPLOYEES E , DEPARTMENTS1 D
WHERE E.DEPARTMENTID=D.DEPARTMENTID;

SELECT E.FIRSTNAME,E.LASTNAME,D.DEPARTMENTNAME , E.SALARY
FROM EMPLOYEES E INNER JOIN DEPARTMENTS1 D
ON E.DEPARTMENTID=D.DEPARTMENTID;


