/*Provide a query showing Customers 
(their full names, customer ID and country) 
who are not in the US.*/

select 
  c.FirstName || " " || c.LastName as FullName,
  c.CustomerId, 
  c.Country
from Customer as c
  where c.Country != "USA"
order by c.Country
