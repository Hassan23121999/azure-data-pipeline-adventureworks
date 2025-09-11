SELECT CustomerName, SUM(SalesAmount) AS TotalSpend
FROM gold.fact_sales
GROUP BY CustomerName
ORDER BY TotalSpend DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
