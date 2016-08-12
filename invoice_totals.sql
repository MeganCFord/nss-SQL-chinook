/*Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name
 for all invoices and customers*/

select 
  e.FirstName || " "|| e.LastName as SalesAgentName,
  c.FirstName ||" " || c.LastName as CustomerName, 
  i.BillingCountry,
  i.Total
from invoice i, Employee e, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
order by SalesAgentName
