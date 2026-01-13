-- Total Sales and Profit by Year

SELECT 
    YEAR(OrderDate) AS OrderYear,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;
