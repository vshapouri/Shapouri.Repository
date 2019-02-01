USE AdventureWorks2017
-------------1
USE AdventureWorks2017
SELECT  p.ProductID, p.Name, p.ListPrice, pp.Quantity,
(p.ListPrice * pp.Quantity) 'Total Price' , pl.Name 'Inventory Name'
FROM Production.Product p
INNER JOIN Production.ProductInventory pp ON p.ProductID=pp.ProductID
INNER JOIN Production.Location pl ON pl.LocationID=pp.LocationID

-------------2
SELECT PL.Name 'Warehouse Name', PS.Name 'Product Category Name' , p.SafetyStockLevel , PP.Quantity
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID=PS.ProductSubcategoryID
INNER JOIN Production.ProductInventory PP ON p.ProductID=PP.ProductID
INNER JOIN Production.Location PL ON PL.LocationID=PP.LocationID
--------------3
SELECT P.Name 'Product Name' , PP.Quantity
FROM Production.Product P
INNER JOIN Production.ProductInventory PP ON P.ProductID=PP.ProductID
INNER JOIN Production.Location PL ON  PL.LocationID=PP.LocationID
---WHERE SafetyStockLevel =
---(
----SELECT SUM (Quantity) 
---FROM Production.ProductInventory
---)
GROUP BY P.Name  , PP.Quantity
-------------4

