-- Top Customers by Total Sales Contribution

SELECT TOP 10
    C.CustomerID,
    C.CompanyName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
FROM Orders O
JOIN [Order Details] OD
    ON O.OrderID = OD.OrderID
JOIN Customers C
    ON O.CustomerID = C.CustomerID
GROUP BY
    C.CustomerID,
    C.CompanyName
ORDER BY
    TotalSales DESC;
