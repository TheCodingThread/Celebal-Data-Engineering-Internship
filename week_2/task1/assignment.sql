-- 1. Load Dataset into SQL database

    --Creating a database and using it
    CREATE DATABASE celebal_week2;
    USE celebal_week2;

    --We imported the dataset into a table named 'superstore' in MySQL Workbench (without using SQL commands).
    
-- 2. Explore Table
    
    -- a. Schema
    DESC superstore;

    -- b. Sample data (dataset preview)
    SELECT *
    FROM superstore
    LIMIT 10;

-- 3. Apply WHERE Filters

    -- a. Region
    SELECT *
    FROM superstore
    WHERE Region = 'South';

    -- b. Category
    SELECT *
    FROM superstore
    WHERE Category = 'Furniture';

    -- c. Sales
    SELECT *
    FROM superstore
    WHERE Sales > 2000;

    -- d. Date
    SELECT *
    ROM superstore
    WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y') BETWEEN '2017-01-01' AND '2017-12-31';

-- 4. GROUP BY Aggregations

    -- a. Sales by Region
    SELECT Region, SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY Region;

    -- b. Quantity by Category
    SELECT Category, SUM(Quantity) AS Total_Quantity
    FROM superstore
    GROUP BY Category;

    -- c. Average Sales by Segment
    SELECT Segment, AVG(Sales) AS Avg_Sales
    FROM superstore
    GROUP BY Segment;

-- 5. Sort and Limit Results

    -- a. Top products
    SELECT `Product Name`, Sales
    FROM superstore
    ORDER BY Sales DESC
    LIMIT 10;

    -- b. Top categories
    SELECT Category, SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY Category
    ORDER BY Total_Sales DESC
    LIMIT 3;

-- 6. Solve Use Cases

    -- a. Monthly trends
    SELECT YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Year, MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Month, SUM(Sales) AS Monthly_Sales
    FROM superstore
    GROUP BY Year, Month
    ORDER BY Year, Month;

    -- b. Top customers
    SELECT `Customer Name`, SUM(Sales) AS Revenue
    FROM superstore
    GROUP BY `Customer Name`
    ORDER BY Revenue DESC;

    -- c. Duplicate records
    SELECT `Row ID`, COUNT(*) AS Duplicate_Count
    FROM superstore
    GROUP BY `Row ID`
    HAVING COUNT(*) > 1;

-- 7. Validate results

    -- a. Row count
    SELECT COUNT(*) AS Total_Rows
    FROM superstore;

    -- b. Data quality

        -- 1. Missing sales values
        SELECT COUNT(*) AS Missing_Sales
        FROM superstore
        WHERE Sales IS NULL;

        -- 2. Missing profit values
        SELECT COUNT(*) AS Missing_Profit
        FROM superstore
        WHERE Profit IS NULL;

        -- 3. Missing customer values
        SELECT COUNT(*) AS Missing_Customers
        FROM superstore
        WHERE `Customer Name` IS NULL;