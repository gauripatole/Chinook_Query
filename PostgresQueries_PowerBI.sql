--1.Total Sales
select sum("Quantity" *"UnitPrice") TotalSales
From public."InvoiceLine"

--2. Total sales by country –ranked
select "BillingCountry" as Country, sum("Total") as "TotalSales"
from public."Invoice"
group by "BillingCountry"
order by "TotalSales" desc;

--3. Total sales by Country, State and City.
select "BillingCountry" as Country, "BillingState" as State, "BillingCity" as City, sum("Total")
TotalSales
from public."Invoice"
group by "BillingState","BillingCountry","BillingCity"
order by TotalSales desc;

--4. Total sales by customer –ranked
select concat(cus."FirstName", ' ', cus."LastName") as CustomerName, sum(i."Total") as
TotalSales
from public."Customer" cus
left join public."Invoice" i on cus."CustomerId" = i."CustomerId"
group by concat(cus."FirstName", ' ', cus."LastName")
order by TotalSales desc;

--5. Total sales by artist –ranked
select A."Name" as ArtistName, sum(I."UnitPrice" * I."Quantity") as "TotalSales"
from public."Artist" A
left join public."Album" alb on A."ArtistId" = alb."ArtistId"
left join public."Track" T on alb."AlbumId" = T."AlbumId"
left join public."InvoiceLine" I on T."TrackId" = I."TrackId"
group by A."Name"
order by 2 desc nulls last;


--6. Total Sales by album
SELECT A."Title" , SUM(I."UnitPrice"*I."Quantity") as "TOTALSALES"
FROM public."Album" as A
INNER JOIN public."Track" T ON T."AlbumId"= A."AlbumId"
INNER JOIN public."InvoiceLine" I ON I."TrackId"=T."TrackId"
GROUP BY A."Title"
ORDER BY 2 DESC;

--7. Total sales by Salesperson
SELECT CONCAT(E."LastName",' ', E."FirstName") AS FULLNAME,
SUM(INL."Quantity"*INL."UnitPrice") AS TOTALSALES
FROM public."Employee" E
INNER JOIN public."Customer" C ON C."SupportRepId"= E."EmployeeId"
INNER JOIN public."Invoice" I ON I."CustomerId"=C."CustomerId"
INNER JOIN public."InvoiceLine" INL ON INL."InvoiceId"=I."InvoiceId"
GROUP BY CONCAT(E."LastName",' ', E."FirstName");

--8. Total tracks bought and total revenue by media type.
SELECT M."Name", SUM("Quantity") AS TOTAL_TRACKS,SUM("Quantity" * I."UnitPrice") AS
REVENUE
FROM public."MediaType" M
INNER JOIN public."Track" T ON T."MediaTypeId"=M."MediaTypeId"
INNER JOIN public."InvoiceLine" I ON I."TrackId"=T."TrackId"
GROUP BY M."Name";

--9.Total sales by customers.
select concat(cus."FirstName", ' ', cus."LastName") as CustomerName, sum(i."Total") as
TotalSales
from public."Customer" cus
left join public."Invoice" i on cus."CustomerId" = i."CustomerId"
group by concat(cus."FirstName", ' ', cus."LastName");

--10. Total sales by Genre.
SELECT G."Name" AS GENRE, SUM(INL."UnitPrice"*inl."Quantity") TotalSales
FROM public."Invoice" I
INNER JOIN public."InvoiceLine" INL ON INL."InvoiceId"= I."InvoiceId"
INNER JOIN public."Track" T ON T."TrackId" = INL."TrackId"
INNER JOIN public."Genre" G ON G."GenreId"=T."GenreId"
GROUP BY G."Name"
ORDER BY TotalSales DESC NULLS LAST;




