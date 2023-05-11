--To start analyzing this data set, Lets get a glimpse of what the data is all about
SELECT 
	TOP 5 *
FROM
	Sales$
-- check for the query to check the numbers of rows and columns in this data

--Count the number of orders per country
SELECT 
	Country,
	COUNT(*) as Order_Count
FROM 
	Sales$
GROUP BY 
	Country
ORDER BY
	Order_Count DESC;
-- there are 6 countries and the united state has the highest orders with total orders of 39206

-- Calculating the total revenue per country:
SELECT 
	Country,
	SUM(Revenue) as Total_Revenue
FROM
	Sales$
GROUP BY
	Country
ORDER BY
	Total_Revenue DESC;

	-- Calculating the total Profit per country:
SELECT 
	Country,
	SUM(Profit) as Total_Profit
FROM
	Sales$
GROUP BY
	Country
ORDER BY
	Total_Profit DESC;
-- The country with the highest revenue is the United state with a total revenue of $27,975,547


--Count of top 10 state by quantity ordered
SELECT
	TOP 10
	State,
	COUNT(*) as Order_Count
FROM 
	Sales$
GROUP BY 
	State
ORDER BY
	Order_Count DESC;
-- the top state with much order is California with a count of 22450 orders

-- Checking product category with most order:
SELECT 
	Product_Category,
	COUNT(*) as Total_Product_Category_Count
FROM 
	Sales$
GROUP BY 
	Product_Category
ORDER BY
	Total_Product_Category_Count DESC;
-- the product category(Accessories, Bikes, Clothing) with most other is the Accessories category with 70120

-- Calculate the total profit per country and product category, Just selecting the top 10:
SELECT 
	top 10
	Country, 
	Product_Category, 
	SUM(Profit) as Total_Profit
FROM 
	Sales$
GROUP BY 
	Country, 
	Product_Category
ORDER BY
	Total_Profit DESC;

-- Find the top selling products by order quantity:
SELECT 
	TOP 10
	Product, 
	SUM(Order_Quantity) as Total_Quantity
FROM 
	Sales$
GROUP BY 
	Product
ORDER BY 
	Total_Quantity DESC;

-- Calculate the average profit margin per order:
SELECT 
	ROUND((SUM(Profit) / COUNT(*)), 2) as Avg_Profit_Margin
FROM 
	Sales$;
--Avaerage Profit margin is $285.05 

-- Calculate the total revenue and profit for each sub-category:
SELECT
	TOP 10
	Sub_Category, 
	SUM(Revenue) as Total_Revenue, 
	SUM(Profit) as Total_Profit
FROM 
	Sales$
GROUP BY 
	Sub_Category
ORDER BY
	Total_Profit DESC;

-- Calculating the total quantity ordered by sub category top 10:
SELECT
	TOP 10
	Sub_Category,
	SUM(Order_Quantity) as Total_Quantity_Ordered
FROM 
	Sales$
GROUP BY 
	Sub_Category
ORDER BY
	Total_Quantity_Ordered DESC;

-- Total Revenue by Year
SELECT 
	Year,
	SUM(Revenue) AS Total_Revenue
FROM 
	Sales$
GROUP BY
	Year
ORDER BY
	Total_Revenue DESC
-- Total Revenue by month
SELECT 
	Month,
	SUM(Revenue) AS Total_Revenue
FROM 
	Sales$
GROUP BY
	Month
ORDER BY
	Total_Revenue DESC