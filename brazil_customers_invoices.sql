/*Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.*/

select 
  c.LastName || ", " || c.FirstName as FullName,
  i.InvoiceId, 
  strftime("%m %d %Y", i.invoiceDate) as DateOfInvoice,
  i.BillingCountry
from Customer as c, Invoice as i
  where c.CustomerId = i.CustomerId
  and i.BillingCountry = "Brazil"
order by FullName
