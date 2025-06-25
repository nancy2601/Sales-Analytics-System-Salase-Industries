##Aggregation Functions
#Total sales revenue generated across all products

SELECT SUM(TotalAmount) AS TotalRevenue
FROM Sales;

SELECT ProductID, SUM(QuantitySold) AS TotalUnitsSold FROM Sales GROUP BY ProductID ORDER BY TotalUnitsSold DESC LIMIT 1;

SELECT AVG(QuantitySold) AS AvgQuantityPerSale FROM Sales;

SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers FROM Sales;

SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Sales GROUP BY CustomerID;

SELECT MAX(TotalAmount) AS MaxSaleAmount FROM Sales;

 SELECT ProductID, AVG(TotalAmount) AS AvgAmountPerProduct FROM Sales GROUP BY ProductID;
 
 SELECT MIN(QuantitySold) AS MinQuantitySold FROM Sales;
 
 SELECT P.Category, SUM(S.TotalAmount) AS Revenue FROM Sales S JOIN Products P ON S.ProductID = P.ProductID GROUP BY P.Category;
 
 SELECT A.AgentID, COUNT(S.SaleID) AS TotalProductsSold FROM Agent_Sales AG JOIN Sales S ON AG.SaleID = S.SaleID JOIN SalesAgents A ON AG.AgentID = A.AgentID GROUP BY A.AgentID;
 
 SELECT * FROM Sales WHERE QuantitySold > 10;
 
 SELECT * FROM Customers WHERE State = 'Delhi';
 
 SELECT * FROM Sales WHERE SaleDate > '2025-01-01';
 
 SELECT * FROM Products WHERE StockQuantity < 200;
 
 SELECT * FROM Customers WHERE YEAR(JoinDate) = 2024;
 
 SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Sales GROUP BY CustomerID HAVING SUM(TotalAmount) > 50000;
 
 SELECT ProductID, SUM(QuantitySold) AS TotalUnits FROM Sales GROUP BY ProductID HAVING SUM(QuantitySold) > 200;
 
  SELECT AG.AgentID, SUM(S.TotalAmount) AS TotalHandled FROM Agent_Sales AG JOIN Sales S ON AG.SaleID = S.SaleID GROUP BY AG.AgentID HAVING SUM(S.TotalAmount) > 100000;
  
  SELECT P.Category, SUM(S.TotalAmount) AS Revenue FROM Sales S JOIN Products P ON S.ProductID = P.ProductID GROUP BY P.Category HAVING SUM(S.TotalAmount) > 200000;
  
  SELECT City, COUNT(DISTINCT CustomerID) AS UniqueCustomers FROM Customers GROUP BY City HAVING COUNT(DISTINCT CustomerID) > 5;
  
   SELECT * FROM Products ORDER BY UnitPrice DESC;
   
   SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Sales GROUP BY CustomerID ORDER BY TotalSpent DESC LIMIT 10;
    SELECT P.ProductID, SUM(S.TotalAmount) AS Revenue FROM Sales S JOIN Products P ON S.ProductID = P.ProductID GROUP BY P.ProductID ORDER BY Revenue DESC LIMIT 5;
    SELECT * FROM Sales ORDER BY SaleDate DESC;
    
SELECT AG.AgentID, SUM(S.TotalAmount) AS TotalSales FROM Agent_Sales AG JOIN Sales S ON AG.SaleID = S.SaleID GROUP BY AG.AgentID ORDER BY TotalSales DESC;
SELECT P.Category, SUM(S.TotalAmount) AS TotalRevenue FROM Sales S JOIN Products P ON S.ProductID = P.ProductID GROUP BY P.Category ORDER BY TotalRevenue DESC;
SELECT * FROM Sales ORDER BY SaleDate DESC LIMIT 10;
SELECT CustomerID, COUNT(SaleID) AS Purchases FROM Sales GROUP BY CustomerID ORDER BY Purchases DESC LIMIT 3;

SELECT AgentID, COUNT(SaleID) AS NumSales FROM Agent_Sales GROUP BY AgentID ORDER BY NumSales DESC LIMIT 5;

SELECT * FROM Customers ORDER BY JoinDate DESC LIMIT 5;