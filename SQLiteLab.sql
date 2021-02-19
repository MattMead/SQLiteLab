--1
SELECT FirstName, LastName, Email
FROM Employee;

--2
SELECT *
FROM Artist;

--3
SELECT Title
FROM Employee
WHERE Title LIKE '%Manager%';

--4
SELECT *, MAX(Total)
FROM Invoice;
SELECT *, MIN(Total)
FROM Invoice;


--5
SELECT BillingAddress, BillingCity, BillingPostalCode, InvoiceID, Total
FROM Invoice
WHERE BillingCountry = 'Germany';

--6
SELECT BillingAddress, BillingCity, BillingCity, BillingPostalCode, Total
FROM Invoice
WHERE Total > 15 AND Total < 25;

--7
SELECT DISTINCT BillingCountry
FROM Invoice;

--8
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country NOT LIKE 'USA';

--9
SELECT *
FROM Customer
WHERE Country = 'Brazil';

--10
SELECT T.Name, I.*
FROM Track T
INNER JOIN InvoiceLine I ON I.TrackID = T.TrackID
ORDER BY T.Name;