-- Data Analytics & BI - Task 1
-- Part C: SQL Data Extraction
-- Database: SQLite
-- 

-- 1. Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

/* Results:
Central: 35738.81
West:    20123.53
East:    13439.85
South:    8601.62
*/


-- 2. Profit by category
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC
LIMIT 5;

/* Results:
Office Supplies:  1419.52
Technology:       -504.47
Furniture:       -1414.09
*/


-- 3. Monthly sales trend
SELECT strftime('%m', order_date) AS month,
       SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

/* Results:
01: 2025.73    05: 615.18     09: 27665.37
02: 731.79     06: 10114.76   10: 5281.82
03: 1683.10    07: 451.62     11: 7973.24
04: 3589.25    08: 2123.23    12: 15649.04
*/


-- 4. Highest discount impact
SELECT discount, AVG(profit) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;

/* Results:
0:    50.62
0.1:   7.10
0.2:  18.31
0.3: -12.69
0.32: -46.98
*/
