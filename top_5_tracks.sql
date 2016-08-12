/* Provide a query that shows the top 5 most purchased tracks over all.*/

select 
  t.name, 
  count(il.InvoiceLineId) as PurchasedCount
from InvoiceLine il, Track t
where t.TrackId = il.InvoiceLineId
group by t.Name
order by PurchasedCount desc
limit 5
