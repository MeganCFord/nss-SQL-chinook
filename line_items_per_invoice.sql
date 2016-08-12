/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.*/

select
  i.InvoiceId,
  count(l.InvoiceLineId) as LineItems
from InvoiceLine l, invoice i
where l.InvoiceId = i.InvoiceId
group by i.InvoiceId
order by LineItems desc

