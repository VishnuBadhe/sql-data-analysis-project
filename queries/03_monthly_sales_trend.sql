-- Monthly Sales Trend

SELECT 
    YEAR(O.OrderDate) AS OrderYear,
    MONTH(O.OrderDate) AS OrderMonth,
    DATENAME(MONTH, O.OrderDate) AS MonthName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
FROM Orders O
JOIN [Order Details] OD 
    ON O.OrderID = OD.OrderID
GROUP BY 
    YEAR(O.OrderDate),
    MONTH(O.OrderDate),
    DATENAME(MONTH, O.OrderDate)
ORDER BY 
    OrderYear,
    OrderMonth;
