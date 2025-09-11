CREATE OR ALTER VIEW gold.fact_sales AS
SELECT
    s.OrderDate,
    s.OrderNumber,   -- ✅ Add this
    c.[full name] AS CustomerName,
    c.Gender,
    c.AnnualIncome,
    t.Region,
    t.Country,
    t.Continent,
    p.ProductName,
    pc.CategoryName,
    psc.SubcategoryName,
    s.OrderQuantity,
    p.ProductPrice,
    (s.OrderQuantity * p.ProductPrice) AS SalesAmount
FROM gold.sales s
JOIN gold.customers c
    ON s.CustomerKey = c.CustomerKey
JOIN gold.product p
    ON s.ProductKey = p.ProductKey
JOIN gold.product_subcategories psc
    ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey
JOIN gold.product_categories pc
    ON psc.ProductCategoryKey = pc.ProductCategoryKey
JOIN gold.territories t
    ON s.TerritoryKey = t.SalesTerritoryKey;



