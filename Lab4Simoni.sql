-- Simoni Handoo
-- Lab 4 DBMS
-- 02/14/17


-- Query 1

SELECT city 
FROM Agents
WHERE aid in (SELECT aid
	      FROM Orders
	      WHERE cid = 'c006' 
             )
ORDER BY city ASC; 


-- Query 2


SELECT distinct pid
FROM Orders
WHERE cid = (SELECT cid
             FROM Customers
             WHERE city in ('Kyoto')
            )
ORDER BY pid DESC;

-- Query 3


SELECT cid, name
FROM Customers 
WHERE cid NOT IN (SELECT cid
		  FROM Orders
		  WHERE aid = 'a01' 
		 ); 

-- Query 4


SELECT cid
FROM customers
WHERE cid IN (SELECT cid
              FROM orders
              WHERE pid IN (SELECT pid
                            FROM products
                            WHERE pid IN ('p01', 'p07')
                            )
               ); 


-- Query 5


SELECT distinct pid
FROM Orders 
WHERE pid NOT IN (SELECT cid
                  FROM Orders
                  WHERE aid = 'a01'
                  )
ORDER BY pid DESC ; 


-- Query 6


SELECT name , discount , city
FROM Customers
WHERE cid in (SELECT distinct cid
              FROM Orders 
              WHERE aid in (SELECT aid
                            FROM Agents
                            WHERE city in ('Tokyo' , 'New York' )
                           )
              )
ORDER BY discount ASC; 


-- Query 7


SELECT name
FROM Customers
WHERE discount in (SELECT discount
	           FROM Customers
                   WHERE city in ('Duluth' , 'London' ) 
                  ); 

-- 8) Essay Question 

-- What are check constraints? 
-- Check constraints are used to limit the value range that can be placed in a column. CHECK constraints enforce domain integrity by limiting the values that are accepted by one or more columns. You can create a CHECK constraint with any logical (Boolean) expression that returns TRUE or FALSE based on the logical operators. 

-- Advantages of Check constraints?
-- By using check constraints, I can ensure that my database only contains data that passes certain constraints. This will allow me to let the database engine control data validation. Having check constraints is a clean way of performing data validation.

-- Good Example: 
-- Range of values for a salary column. 
-- The range can be limited by creating a CHECK constraint that allows for only Data that ranges from $10,000 through $200,000. This would prevent salaries from being entered beyond the regular salary range. Salary >= 10000 AND salary <= 200000

-- NOT NULL constraint → NOT NULL is exceptionally useful when we have a table with columns that are critical to the definition of that data structure. For instance, an account without a name would be potentially meaningless,

-- You can apply multiple check constraints to a single column.

-- Bad Example: 
-- CREATE TABLE IF NOT EXISTS products (
-- Product_id PRIMARY KEY
-- Product_name VARCHAR(255) NOT NULL,
-- Manufacturer TEXT CHECK (Manufacturer > 0)
-- );
-- This would be a bad example of having check constraint as you cannot have a data type of text and then compare it with a numeric value. 


