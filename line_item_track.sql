/*Provide a query that includes the purchased track name with each invoice line item*/

select 
  l.InvoiceLineId,
  t.Name
from InvoiceLine l, track t
where t.TrackId = l.TrackId
order by l.invoiceId
