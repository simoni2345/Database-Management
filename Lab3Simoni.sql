-- Simoni Handoo 
-- Database Management
-- Lab 3
-- 02/6/2017

1. 

SELECT Ordnumber, totalUSD
FROM Orders;

2. 

SELECT name, city
FROM Agents
WHERE name = 'Smith' ;

3. 

SELECT pid, name, priceUSD
FROM Products
WHERE quantity > 200100

4. 

SELECT name, city 
FROM Customers
WHERE city = 'Duluth' ; 

5.

SELECT name
FROM Agents
WHERE city NOT IN ('New York', 'Duluth') ;

6. 

SELECT *
FROM products
WHERE city not in (‘Dallas’ , ‘Duluth’)
AND priceUSD <= 1;

7.

SELECT *
FROM orders
WHERE month in (‘Feb’ , ‘May’ ) ; 

8.

SELECT *
FROM Orders 
WHERE month in (‘Feb’)
ANd totalUSD >= 600; 

9. 

SELECT *
From Orders
WHERE cid = ‘C005’ ;

-- For this query, there would be no output because the Customer with the cid 'c005' did not make an order in the database yet. 

