SELECT CustomerName, COUNT(DISTINCT OrderNumber) AS TotalOrders
FROM gold.fact_sales
GROUP BY CustomerName
ORDER BY TotalOrders DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;