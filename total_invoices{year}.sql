/*How many Invoices were there in 2009 and 2011?*/

select 
  count(i.InvoiceId),
  strftime("%Y", i.InvoiceDate) as YearBilled
from invoice i
where YearBilled = "2009"
or YearBilled = "2011"
group by YearBilled
