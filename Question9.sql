/*Q9
Write a query that determines the customer that has spent the most on music for each country. 
Write a query that returns the country along with the top customer and how much they spent. 
For countries where the top amount spent is shared, provide all customers who spent this amount.
You should only need to use the Customer and Invoice tables.
Check Your Solution
Though there are only 24 countries, your query should return 25 rows because the United Kingdom 
has 2 customers that share the maximum.*/
WITH tab1 AS
( SELECT c.CustomerId, c.FirstName, c.LastName,c.Country, SUM(i.Total) as TotalSpent
FROM Customer AS c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY C.CustomerId
)
SELECT tab1.*
FROM tab1
JOIN
( SELECT CustomerId, FirstName, LastName, Country, MAX(TotalSpent) AS TotalSpent
FROM tab1
GROUP BY Country
)tab2
ON tab1.Country = tab2.Country
WHERE tab1.TotalSpent = tab2.TotalSpent
ORDER BY Country;
