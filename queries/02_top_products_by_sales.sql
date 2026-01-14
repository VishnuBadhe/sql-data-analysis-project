-- Top 5 Products by Total Sales (Northwind)

SELECT TOP 5
    P.ProductName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
FROM Products P
JOIN [Order Details] OD
    ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY TotalSales DESC;
