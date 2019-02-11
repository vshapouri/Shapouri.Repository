USE AdventureWorks2017
------------1
SELECT TOP 1 SE.Name, SE.QTY , SE.TORAL
FROM 
(
SELECT TOP 10 PP.Name  ,PC.Name 'NAME'  ,SD.LineTotal 'TORAL' ,SD.OrderQty 'QTY'
FROM Sales.SalesOrderDetail SD
INNER JOIN Production.Product PP ON PP.ProductID = SD.ProductID
INNER JOIN Production.ProductSubcategory PPS ON PPS.ProductSubcategoryID = PP.ProductSubcategoryID
INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = PPS.ProductCategoryID
ORDER BY SD.LineTotal DESC
) SE
ORDER BY SE.QTY

-----------2

SELECT PC.Name, SD.LineTotal
FROM Sales.SalesOrderDetail SD
INNER JOIN Production.Product PP ON PP.ProductID = SD.ProductID
INNER JOIN Production.ProductSubcategory PPS ON PPS.ProductSubcategoryID = PP.ProductSubcategoryID
INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = PPS.ProductCategoryID
GROUP BY PC.Name, SD.LineTotal

----------3

SELECT SEL.Name
FROM
(
SELECT PP.Name, SD.LineTotal, PC.Name, ROW_NUMBER() OVER ( PARTITION BY PC.Name ORDER BY SD.LineTotal ) 'ROOW'
FROM Sales.SalesOrderDetail SD
INNER JOIN Production.Product PP ON PP.ProductID = SD.ProductID
INNER JOIN Production.ProductSubcategory PPS ON PPS.ProductSubcategoryID = PP.ProductSubcategoryID
INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = PPS.ProductCategoryID
) SEL
WHERE SEL.ROOW = 1

--------4

----------5
SELECT SH.CustomerID, PS.Name, SD.LineTotal
FROM Sales.SalesOrderHeader SH
INNER JOIN Sales.SalesOrderDetail SD ON SD.SalesOrderID = SH.SalesOrderID
INNER JOIN Production.Product PP ON PP.ProductID = SD.ProductID
INNER JOIN Production.ProductSubcategory PPS ON PPS.ProductSubcategoryID = PP.ProductSubcategoryID
INNER JOIN Production.ProductSubcategory PS ON PS.ProductCategoryID = PPS.ProductCategoryID
WHERE SD.LineTotal = (SELECT MAX (LineTotal)FROM Sales.SalesOrderHeader)

-------------





