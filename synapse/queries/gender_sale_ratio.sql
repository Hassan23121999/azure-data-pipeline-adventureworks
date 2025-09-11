SELECT Gender, SUM(SalesAmount) AS TotalSpend
FROM gold.fact_sales
GROUP BY Gender
ORDER BY TotalSpend DESC;
