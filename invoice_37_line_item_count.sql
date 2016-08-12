/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.*/

select 
  count(l.InvoiceLineId) as LineItems
from InvoiceLine l
where l.invoiceId = "37"
