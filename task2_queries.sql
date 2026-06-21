-- query 1
SELECT Category, ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- query 2
SELECT "Customer Name", ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 3: Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 4: Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Query 5: Subquery
SELECT *
FROM cleaned_superstore
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM cleaned_superstore
);

-- Query 6: CTE
WITH category_sales AS
(
    SELECT
        Category,
        SUM(Sales) AS Total_Sales
    FROM cleaned_superstore
    GROUP BY Category
)
SELECT *
FROM category_sales
ORDER BY Total_Sales DESC;