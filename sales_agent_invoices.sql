/*Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/

select 
  e.LastName ||","|| e.FirstName as EmployeeName, 
  i.InvoiceId, 
  strftime("%Y %m/%d", i.InvoiceDate) as InvoiceDate,
  i.Total
from invoice i, Employee e, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
order by EmployeeName
