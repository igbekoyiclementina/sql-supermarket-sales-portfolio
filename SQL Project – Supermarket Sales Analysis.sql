SELECT * 
FROM supermarket_sales.supermarket_sales;

-- Converting the Columns back to the appropriate formats after importing the CSV file into MySQL

ALTER TABLE supermarket_sales.supermarket_sales
MODIFY COLUMN Quantity INT, 
MODIFY COLUMN `Unit price` DECIMAL(10,2), 
MODIFY COLUMN `Tax 5%` DECIMAL(10,2), 
MODIFY COLUMN Sales DECIMAL(10,2), 
MODIFY COLUMN cogs DECIMAL(10,2), 
MODIFY COLUMN `gross income` DECIMAL(10,2), 
MODIFY COLUMN Rating DECIMAL(3,1)
;

-- SELECT STATEMENT command in MySQL (to retrieve columns or the entire table in the database)
SELECT Gender
FROM supermarket_sales.supermarket_sales;

SELECT `Customer type`, Gender, Sales, Branch
FROM supermarket_sales.supermarket_sales;


-- DISTINCT command in MySQL (to remove duplicate rows and select unique values only)

SELECT DISTINCT Gender
FROM supermarket_sales.supermarket_sales;

SELECT DISTINCT Branch, Payment, `Invoice ID`
FROM supermarket_sales.supermarket_sales;

-- WHERE CLAUSE command in MySQL (used to filter out certain records)

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE Sales >= 100
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE gender = 'Female'
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE gender != 'Female'
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE Date < '2019-03-01'
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE Date < '3/1/2019' OR NOT gender = 'Female'
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE (Date < '3/1/2019' and Payment = 'cash') or `gross income` > 18
;

-- LIKE STATEMENT in MySQL (to search for patterns in text)

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE City LIKE '%y%'
;

SELECT *
FROM supermarket_sales.supermarket_sales
WHERE payment LIKE 'C___'
;

-- GROUP BY and ORDER BY Function in MySQL (GROUP BY is used to summarize data into categories, while ORDER BY is to sort the data)

SELECT gender
FROM supermarket_sales.supermarket_sales
GROUP BY Gender
;

SELECT City, `Product line`
FROM supermarket_sales.supermarket_sales
GROUP BY City, `Product line`
;

-- AGREGATE (AVERAGE)

SELECT gender, AVG (`Unit price`) AS Avg_Unit_Price
FROM supermarket_sales.supermarket_sales
GROUP BY Gender
;

SELECT Rating
FROM supermarket_sales.supermarket_sales
GROUP BY Rating
;

SELECT 
`Product line`,
AVG(Rating) AS Avg_Rating,
MAX(Rating) AS Max_Rating,
MIN(Rating) AS Min_Rating,
COUNT(Rating) AS Rating_Count
FROM supermarket_sales.supermarket_sales
GROUP BY `Product line`;

-- ORDER BY Function in MySQL

SELECT *
FROM supermarket_sales.supermarket_sales
ORDER BY Gender;

SELECT *
FROM supermarket_sales.supermarket_sales
ORDER BY Quantity DESC;

SELECT *
FROM supermarket_sales.supermarket_sales
ORDER BY City, Payment, `Unit price` DESC;

-- WHERE and HAVING command in MySQL

SELECT `Invoice ID`, AVG(Quantity) AS Avg_Quantity
FROM supermarket_sales.supermarket_sales
GROUP BY `Invoice ID`
HAVING Avg_Quantity > 5;


SELECT City, AVG(cogs) AS Avg_Cogs
FROM supermarket_sales.supermarket_sales
WHERE City LIKE '%y%'
GROUP BY City
HAVING Avg_Cogs > 200;


-- LIMIT command in MySQL (to restrict the number of rows returned by a query)

SELECT *
FROM supermarket_sales.supermarket_sales
LIMIT 10;

SELECT *
FROM supermarket_sales.supermarket_sales
order by Rating DESC
LIMIT 15;

SELECT *
FROM supermarket_sales.supermarket_sales
order by Rating DESC
LIMIT 4,3
;

-- ALIASING command in MySQL (to give a table or a column a temporary name)

SELECT `Invoice ID`, AVG(Quantity) AS AVQ
FROM supermarket_sales.supermarket_sales
GROUP BY `Invoice ID`
HAVING AVQ > 5;


