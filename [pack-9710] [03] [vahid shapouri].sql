USE AdventureWorks2017
----------1
SELECT S.FirstName, EmailAddress,Name'Company Name'
FROM   Sales.vSalesPerson S, Sales.Customer SC , Sales.vStoreWithAddresses SV
WHERE Name = 'Bike World'
-------------2
SELECT Name, City
FROM Sales.vStoreWithAddresses, Sales.Customer
WHERE City = 'Dallas'
-----------3
SELECT ListPrice, ss.ProductID
FROM Production.Product, Sales.SalesOrderDetail ss
WHERE ListPrice > 1000
------------4
SELECT Name, SubTotal, SalesOrderID
FROM Sales.vStoreWithDemographics, Sales.SalesOrderHeader
WHERE SalesOrderID > 10000
--------------5
SELECT Name
FROM  Production.ProductSubcategory
WHERE Name = 'socks'
-----------6
SELECT SS.SalesOrderID, SSD.UnitPrice
FROM Sales.SalesOrderHeader SS, Sales.SalesOrderDetail SSD
--------
