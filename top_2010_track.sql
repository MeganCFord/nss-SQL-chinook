/* Provide a query that shows the most purchased track of 2010?*/

select 
  TC.name, 
  max(TC.PurchasedCount)
from
  (select 
    t.name, 
    count(il.InvoiceLineId) as PurchasedCount
  from InvoiceLine il, Invoice i, Track t
  where i.InvoiceId = il.InvoiceId 
  and t.TrackId = il.InvoiceLineId
  and strftime("%Y", i.InvoiceDate) = "2010"
  group by t.Name
  order by PurchasedCount desc) 
as TC
