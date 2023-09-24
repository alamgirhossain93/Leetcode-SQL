/* Write your PL/SQL query statement below */
SELECT product_id, year first_year, quantity,price
FROM Sales
WHERE (product_id,year) in (
SELECT product_id,MIN(year)
FROM Sales
GROUP BY product_id)
ORDER BY product_id