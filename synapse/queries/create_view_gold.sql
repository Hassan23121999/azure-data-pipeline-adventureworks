
CREATE OR ALTER VIEW gold.calender
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.customers
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as QUER1


CREATE OR ALTER VIEW gold.product_categories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.product_subcategories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.product
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.preturns
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.sales
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as QUER1

CREATE OR ALTER VIEW gold.territories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakeh.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as QUER1




