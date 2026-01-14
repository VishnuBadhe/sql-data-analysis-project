-- Total Sales by Product Category

SELECT
    C.CategoryName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
FROM Orders O
JOIN [Order Details] OD 
    ON O.OrderID = OD.OrderID
JOIN Products P 
    ON OD.ProductID = P.ProductID
JOIN Categories C 
    ON P.CategoryID = C.CategoryID
GROUP BY
    C.CategoryName
ORDER BY
    TotalSales DESC;
