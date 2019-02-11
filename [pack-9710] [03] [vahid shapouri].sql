USE AdventureWorksLT2017
GO
SELECT FirstName, EmailAddress
FROM SalesLT.Customer
WHERE CompanyName = 'Bike World'

GO  

SELECT CompanyName
FROM SalesLT.Customer SC
INNER JOIN SalesLT.CustomerAddress SA ON SA.CustomerID = SC.CustomerID
INNER JOIN SalesLT.Address S ON S.AddressID = SA.AddressID
WHERE S.City = 'Dallas'

GO
SELECT COUNT (*) TOTAL
FROM SalesLT.SalesOrderDetail SS
INNER JOIN SalesLT.Product SP ON SP.ProductID = SS.ProductID
WHERE SP.ListPrice > 1000

GO

SELECT SC.CompanyName
FROM SalesLT.SalesOrderHeader SH
INNER JOIN SalesLT.Customer SC ON SC.CustomerID = SH.CustomerID
WHERE SH.SubTotal + SH.Freight + SH.TaxAmt > 100000

GO

SELECT SUM (SS.OrderQty) 'TOTAL'
FROM SalesLT.SalesOrderDetail SS
INNER JOIN SalesLT.Product SP ON SP.ProductID = SS.ProductID
INNER JOIN SalesLT.SalesOrderHeader SH ON SH.SalesOrderID = SS.SalesOrderID
INNER JOIN SalesLT.Customer SC ON SC.CustomerID = SH.CustomerID
WHERE SP.Name = 'Racing Socks, L'  AND  SC.CompanyName = 'Riding Cycles'

GO

SELECT SS.UnitPrice
FROM SalesLT.SalesOrderDetail SS
WHERE OrderQty = 1

GO

SELECT SP.Name , SC.CompanyName
FROM SalesLT.ProductModel SM
INNER JOIN SalesLT.Product SP ON SP.ProductModelID = SM.ProductModelID
INNER JOIN SalesLT.SalesOrderDetail SD ON SD.ProductID = SP.ProductID
INNER JOIN SalesLT.SalesOrderHeader SH ON SH.SalesOrderID = SD.SalesOrderID
INNER JOIN SalesLT.Customer SC ON SC.CustomerID = SH.CustomerID
WHERE SM.Name = 'Racing Socks'

GO

SELECT SD.Description
FROM SalesLT.ProductDescription SD
INNER JOIN SalesLT.ProductModelProductDescription SMD ON SMD.ProductDescriptionID = SD.ProductDescriptionID
INNER JOIN SalesLT.ProductModel SM ON SM.ProductModelID = SMD.ProductModelID
INNER JOIN SalesLT.Product SP ON SP.ProductModelID = SMD.ProductModelID
WHERE SMD.Culture = 'fr' AND SP.ProductID = '736'

GO

SELECT  SC.CompanyName , SH.SubTotal , SUM (SP.Weight * SD.OrderQty) 'Total Weight'
FROM SalesLT.Product SP
INNER JOIN SalesLT.SalesOrderDetail SD ON SD.ProductID = SP.ProductID
INNER JOIN SalesLT.SalesOrderHeader SH ON SH.SalesOrderID = SD.SalesOrderID
INNER JOIN SalesLT.Customer SC ON SC.CustomerID = SH.CustomerID
GROUP BY SC.CompanyName , SH.SubTotal

GO

SELECT SUM (SD.OrderQty) 'TOTAL'
FROM SalesLT.ProductCategory SC
INNER JOIN SalesLT.Product SP ON SP.ProductCategoryID = SC.ProductCategoryID
INNER JOIN SalesLT.SalesOrderDetail SD ON SD.ProductID = SP.ProductID
INNER JOIN SalesLT.SalesOrderHeader SH ON SH.SalesOrderID = SD.SalesOrderID
INNER JOIN SalesLT.Address SA ON SA.AddressID = SH.ShipToAddressID
WHERE SA.City =  'London' AND SC.Name = 'Cranksets'

