/*Q4
The Chinook team would like to throw a promotional Music Festival for their top
10 cutomers who have spent the most in a single invoice. 
Write a query that returns the first name, last name, and invoice total for 
the top 10 invoices ordered by invoice total descending.*/
SELECT Customer.FirstName,Customer.LastName,Invoice.Total
FROM Invoice
JOIN Customer ON Customer.CustomerId=Invoice.CustomerId
ORDER BY Invoice.Total DESC LIMIT 10;