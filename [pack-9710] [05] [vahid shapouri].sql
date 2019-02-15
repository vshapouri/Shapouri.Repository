use AdventureWorks2017
GO
SELECT * FROM Production.BillOfMaterials
GO
SELECT * FROM Production.Culture
GO
SELECT * FROM Production.Location
GO 
SELECT * FROM Production.Product
GO
SELECT * FROM Production.ProductCategory
GO 
SELECT * FROM Production.ProductInventory
GO
SELECT * FROM Production.ProductListPriceHistory
GO
SELECT * FROM Production.ProductModel
GO
SELECT * FROM Production.ProductModelProductDescriptionCulture
GO
SELECT * FROM Production.ProductPhoto
GO
SELECT * FROM Production.ProductReview
GO
SELECT * FROM Production.ProductSubcategory
-------------------1
GO
SELECT PP.Name 'CatName', pS.Name 'Subcatname', PM.Name 'modelname'
FROM Production.ProductCategory PP, Production.ProductSubcategory PS, Production.ProductModel PM

-----------------3
GO
SELECT ProductAssemblyID, ComponentID
FROM Production.BillOfMaterials
