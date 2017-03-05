-- Query 1

SELECT Customers.name, Customers.city
FROM Customers
WHERE city in (SELECT totalTable.city
	       FROM (SELECT Products.city, count(city) 
		     as cityTotal
		     FROM Products 
		     GROUP BY Products.city)
	       as totalTable
inner join (SELECT max(cityTotal) as maxTotal 
      FROM (SELECT city as "City Name", count(city) as cityTotal 
            FROM Products
            GROUP BY Products.city) as OrderedCity) 
	       as maximumTable
on totalTable.cityTotal = maximumTable.maxTotal);


-- Query 2

SELECT Products.name, Products.priceUSD
FROM Products inner join (SELECT avg(priceUSD) as AverageUSD 
                          FROM Products
	                 ) 
                    as AverageTable
                    on AverageUSD < Products.priceUSD
                    ORDER BY Products.name DESC; 

-- Query 3

SELECT Customers.name, Orders.pid, Orders.totalUSD
FROM Customers inner join Orders on Customers.cid = Orders.cid
ORDER BY Orders.totalUSD ASC;

-- Query 4 

SELECT Customers.name, totalOrdered
FROM Customers
inner join (SELECT cid, coalesce(sum(totalUSD) , '0')
            as totalOrdered 
            FROM Orders 
            GROUP BY cid
            )as totalTable
on totalTable.cid = Customers.cid; 

-- Query 5

SELECT Customers.name as "Customer Name" ,  Products.name as "Product Name" , Agents.name as "Agent Name"
FROM Customers , Agents , Products , Orders
WHERE Customers.cid = Orders.cid
AND   Agents.aid = Orders.aid
AND   Products.pid = Orders.pid
AND   Agents.city = 'Newark';

-- Query 6

SELECT *
FROM (SELECT Orders.*, Orders.qty * Products.priceUSD * (1-(discount/100)) AS actualdollars
      FROM Orders
      inner join Products on Orders.pid = Products.pid
      inner join Customers on Orders.cid = Customers.cid
      ) AS calcTable
WHERE totalUSD != actualdollars;

-- Essay Question


/*
Left and Right outer joins:  A left outer join retains all of the rows of the “left” table, regardless of whether there is a 
row that matches on the “right” table. This means that NULLs are displayed. The “left” table is the table that is written 
first in the SQL join statement. Right outer join is pretty much the same thing as a left outer join, except that the row 
from the right table are displayed in the result of the query, regardless of whether or not they have matching values in the 
left table. 
*/

--Example of Left outer join in CAP4 database:

SELECT distinct Products.pid , Products.name
FROM Products left outer join Orders on Products.pid = Orders.pid
ORDER BY pid ASC
; 

-- Example of Right outer join in CAP4 database:

SELECT distinct Products.pid , Products.name
FROM Products right outer join Orders on Products.pid = Orders.pid
ORDER BY pid ASC
; 

