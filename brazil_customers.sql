/*Provide a query only showing the Customers from Brazil*/

select 
  c.FirstName || " " || c.LastName as FullName,
  c.CustomerId, 
  c.Country
from Customer as c
  where c.Country = "Brazil"
order by FullName
