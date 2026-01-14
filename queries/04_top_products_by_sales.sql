-- Top 10 Products by Total Sales

SELECT TOP 10
    P.ProductName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
FROM Orders O
JOIN [Order Details] OD 
    ON O.OrderID = OD.OrderID
JOIN Products P 
    ON OD.ProductID = P.ProductID
GROUP BY 
    P.ProductName
ORDER BY 
    TotalSales DESC;
