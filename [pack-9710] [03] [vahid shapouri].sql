USE AdventureWorks2017
------
SELECT Distinct Color 
FROM Production.Product
-----
SELECT *
FROM Production.Product
------------
SELECT TOP 4 ProductID, Name, Color, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
------------
SELECT TOP 25PERCENT ProductID, Name, Color, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
------------
SELECT TOP 4 WITH TIES ProductID, Name, Color, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
--------------
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
ORDER BY Name
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY
--------------
SELECT TOP 10 ProductID, Name, Color, ListPrice
FROM Production.Product
ORDER BY Product.ProductID
--------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE ProductID <= 2
-----------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Color = 'red'
---------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Color <> 'Blue'
-------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Color = 'Blue' OR Color = 'Red'
ORDER BY Color
----------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Color = 'Blue' AND ListPrice > 1000
ORDER BY Color
------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Name LIKE 'Touring%'
---------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Name LIKE '%Touring%'
---------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Name LIKE '_a%'
--------------
SELECT TOP 5 ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Name LIKE '%Touring%'
ORDER BY ListPrice DESC
-------------
SELECT ProductId, Name, color, Listprice, StandardCost, ListPrice-StandardCost 'Profit'
FROM Production.Product
WHERE ListPrice-StandardCost> 300
ORDER BY Profit DESC
---------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE Color IS NOT NULL
-------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE ProductID IN (4 , 777 , 898)
--------------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE ProductID = 4 OR ProductID = 777
--------------
SELECT DISTINCT ProductID
FROM Sales.SalesOrderDetail
----------
SELECT ProductId, Name, color, Listprice, StandardCost
FROM Production.Product
WHERE ProductID IN 
(
SELECT DISTINCT ProductID
FROM Sales.SalesOrderDetail
)
--------------
SELECT *
FROM Production.ProductSubcategory
--------
SELECT ProductId, Name, Color, ListPrice
FROM Production.Product
WHERE ProductSubcategoryID IN
(
SELECT ProductSubcategoryID
FROM Production.ProductSubcategory
WHERE Name LIKE '%Bike%'
)
---------------
