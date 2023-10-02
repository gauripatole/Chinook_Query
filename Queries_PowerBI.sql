# 1. Total sales
select sum(L.Quantity * L.UnitPrice) TotalSales
From chinook.InvoiceLine L;

# 2. Total sales by country –ranked
select BillingCountry as Country, sum(Total) TotalSales
from chinook.Invoice
group by BillingCountry
order by TotalSales desc;

# 3. Total sales by country, state & city
select BillingCountry as Country, BillingState as State, BillingCity as City, sum(Total) TotalSales
from chinook.Invoice
group by BillingState,BillingCountry, BillingCity
order by TotalSales desc;

#4. Total sales by customer - ranked
select concat(cus.FirstName, ' ', cus.LastName) as CustomerName, sum(i.Total) as TotalSales
from chinook.Customer cus
left join chinook.Invoice i on cus.CustomerId = i.CustomerId
group by concat(cus.FirstName, ' ', cus.LastName)
order by TotalSales desc;

#5.Total sales by artist –ranked
select A.Name as ArtistName, sum(I.UnitPrice * I.Quantity) as TotalSales
from chinook.Artist A
left join chinook.Album B on A.ArtistId = B.ArtistId
left join chinook.Track T on B.AlbumId = T.AlbumId
left join chinook.InvoiceLine I on T.TrackId = I.TrackId
group by A.Name
order by TotalSales desc;

#6. Total sales by Album
SELECT A.Title , SUM(I.UnitPrice*I.Quantity) TOTALSALES
FROM
CHINOOK.ALBUM A
INNER JOIN CHINOOK.Track T ON T.AlbumId= A.AlbumId
INNER JOIN chinook.InvoiceLine I ON I.TrackId=T.TrackId
GROUP BY A.Title
ORDER BY TOTALSALES DESC;

#7. Total sales by Salesperson
SELECT CONCAT(E.LastName,' ', E.FirstName) AS FULLNAME, SUM(INL.Quantity*INL.UnitPrice) AS
TOTALSALES
FROM chinook.Employee E
INNER JOIN CHINOOK.CUSTOMER C ON C.SupportRepId= E.EmployeeId
INNER JOIN chinook.Invoice I ON I.CustomerId=C.CustomerId
INNER JOIN chinook.InvoiceLine INL ON INL.InvoiceId=I.InvoiceId
GROUP BY CONCAT(E.LastName,' ', E.FirstName);

#8. Total tracks bought and total revenue by media type.
SELECT M.Name, SUM(Quantity) AS TOTAL_TRACKS,SUM(QUANTITY * I.UNITPRICE) AS REVENUE
FROM CHINOOK.MEDIATYPE M
INNER JOIN CHINOOK.TRACK T ON T.MediaTypeId=M.MediaTypeId
INNER JOIN CHINOOK.InvoiceLine I ON I.TrackId=T.TrackId
GROUP BY M.Name;

#9. Total sales by customers.
SELECT CONCAT(Cus.firstname, ' ',Cus.LastName) AS Full_Name , SUM(Quantity*UnitPrice) TotalSales
FROM chinook.Invoice Inv
INNER JOIN chinook.Customer Cus on Inv.CustomerId=cus.CustomerId
INNER JOIN chinook.InvoiceLine INL ON Inv.InvoiceId=INL.InvoiceId
GROUP BY CONCAT(Cus.firstname, ' ',Cus.LastName)
ORDER BY TotalSales DESC;

#10. Total sales by Genre.
SELECT G.Name AS GENRE, SUM(INL.UnitPrice*inl.Quantity) TotalSales
FROM chinook.Invoice I
INNER JOIN chinook.InvoiceLine INL ON INL.InvoiceId= I.InvoiceId
INNER JOIN chinook.Track T ON T.TrackId = INL.TrackId
INNER JOIN chinook.Genre G ON G.GenreId=T.GenreId
GROUP BY G.Name
ORDER BY TotalSales DESC;
