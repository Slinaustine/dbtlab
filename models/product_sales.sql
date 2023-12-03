{{ config(materialized='table') }}

with Product_Sales as (
    SELECT City,State,sum(NA_SALES),SUM(GLOBAL_SALES) FROM Prod.Product
    GROUP BY 1,2
)
SELECT * FROM Product_Sales