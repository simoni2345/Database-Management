-- Lab 5 DBMS
-- Simoni Handoo 

-- Query 1


SELECT Agents.city
FROM Agents inner join Orders on Orders.aid = Agents.aid
WHERE cid = 'c006'
;


-- Query 2

SELECT distinct Products.pid
FROM Orders inner join Products on Orders.pid = Products.pid
	    inner join Customers on Orders.cid = Customers.cid
WHERE Customers.city = 'Kyoto' 
ORDER BY pid DESC
;


-- Query 3

SELECT name, cid
FROM Customers 
WHERE Customers.cid not in (SELECT cid
                            FROM Orders
                            )
;

-- Query 4

SELECT Customers.name
FROM Customers left outer join Orders on Orders.cid = Customers.cid 
WHERE orders.cid is null
;


-- Query 5

SELECT distinct Customers.name as "Customer Name", Agents.name as "Agent Name" 
FROM Orders inner join Agents on Orders.aid = Agents.aid
            inner join Customers on Orders.cid = Customers.cid
WHERE Agents.city = Customers.city
; 

-- Query 6

SELECT Customers.name as "Customer Name", Agents.name as "Agent Name", Customers.city as "Shared City"
FROM Customers , Agents 
WHERE Customers.city = Agents.city
;

-- Query 7

SELECT Customers.name as "Customer Name" , Customers.city as "Customer City"
FROM Customers 
WHERE Customers.city in (SELECT city
		         FROM Products
		         GROUP BY City
		         ORDER BY count(pid) ASC
		        )
; 
