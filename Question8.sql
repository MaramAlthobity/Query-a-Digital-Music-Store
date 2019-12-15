/*Q8
The team at Chinook would like to identify all the customers who listen to Rock music. 
Write a query to return the email, first name, last name, and Genre of all Rock Music listeners. 
Return your list ordered alphabetically by email address starting with 'A'.
Check your solution
Your final table should have 59 rows and 4 columns.*/
SELECT DISTINCT c.Email As email, c.FirstName AS first_name, c.LastName AS last_name, g.Name As name
FROM Customer c JOIN Invoice i
ON c.CustomerId = i.CustomerId JOIN InvoiceLine il
ON i.InvoiceId =  il.InvoiceId JOIN Track t
ON il.TrackId = t.TrackId JOIN Genre G
ON T.GenreId = G.GenreId
WHERE G.Name = "Rock"
ORDER BY c.Email ;