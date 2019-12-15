/*Q2
The Chinook team decided to run a marketing campaign in Brazil, 
Canada, india, and Sweden. Using the customer table, write a query 
that returns the first name, last name, and country for all customers 
from the 4 countries.*/
SELECT FirstName,LastName,Country
FROM Customer
WHERE Country=='Brazil' OR Country=='Canada' OR Country=='India' OR 
Country=='Sweden';