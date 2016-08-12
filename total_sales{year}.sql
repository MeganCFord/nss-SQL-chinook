/*What are the respective total sales for 2009 and 2011*/

select 
  sum(i.Total),
  strftime("%Y", i.InvoiceDate) as YearBilled
from invoice i
where YearBilled = "2009"
or YearBilled = "2011"
group by YearBilled
