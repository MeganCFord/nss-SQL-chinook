/* Provide a query that shows all Invoices but includes the # of invoice line items.*/

select 
  i.InvoiceId,
  count(il.InvoiceLIneId) as NumOfLineItems
from Invoice i, InvoiceLine il
where il.InvoiceId = i.invoiceId
group by i.InvoiceId
