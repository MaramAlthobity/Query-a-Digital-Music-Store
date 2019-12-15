/*Q1
The Chinook database contains all invoices from the beginning of 2009 till 
the end of 2013. The employees at Chinook store are interested in seeing 
all invoices that happened in 2013 only. Using the Invoice table, write a 
query that returns all the info of the invoices in 2013.*/
SELECT * FROM Invoice WHERE InvoiceDate>='2013-01-01';