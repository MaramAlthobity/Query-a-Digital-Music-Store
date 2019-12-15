/*Q7
The customer who has spent the most money will be declared the best customer. 
Build a query that returns the person who has spent the most money. 
I found the solution by linking the following three: 
Invoice, InvoiceLine, and Customer tables to retrieve this information, 
but you can probably do it with fewer!
check your solution
The customer who spent the most according to invoices was Customer 6 with 49.62 in purchases.*/
SELECT c.CustomerId, c.FirstName, c.LastName, sum(i.Total) as TotalSpent
FROM Customer AS c, Invoice AS i
WHERE c.CustomerId=i.CustomerId
GROUP BY i.CustomerId
ORDER BY TotalSpent DESC
LIMIT 1;