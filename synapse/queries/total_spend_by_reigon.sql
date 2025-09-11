SELECT Region, ROUND(SUM(SalesAmount),0) AS TotalSpend
FROM gold.fact_sales
GROUP BY Region
ORDER BY TotalSpend DESC;
