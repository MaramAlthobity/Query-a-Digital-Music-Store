/*Q6
We would like to throw a promotional Music Festival in the city we made the most money.
Write a query that returns the 1 city that has the highest sum of invoice totals. 
Return both the city name and the sum of all invoice totals.
check your solution
The top city for Invoice dollars was Prague with an amount of 90.24*/
SELECT Customer.City,sum(Invoice.Total)
FROM Customer,Invoice
WHERE Customer.CustomerId=Invoice.CustomerId
GROUP BY Customer.City
ORDER BY sum(Invoice.Total)DESC
LIMIT 1;