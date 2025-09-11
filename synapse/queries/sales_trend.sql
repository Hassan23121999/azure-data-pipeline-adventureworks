SELECT YEAR(OrderDate) AS Year, MONTH(OrderDate) AS Month,
       SUM(SalesAmount) AS MonthlySales
FROM gold.fact_sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;
