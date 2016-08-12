/* Provide a query that shows the total sales per country.*/
select 
  sum(i.Total) as TotalSales,
  i.BillingCountry
from Invoice i
group by i.BillingCountry
order by TotalSales desc

  
