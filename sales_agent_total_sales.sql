/* Provide a query that shows total sales made by each sales agent.*/
select 
  round(sum(OneTotal.Total), 2) as TotalSales,
  OneTotal.EmployeeName as EmployeeName
from 
  (select 
    e.EmployeeId, 
    e.LastName ||", "|| e.FirstName as EmployeeName,
    i.Total
  from Invoice i, employee e, customer c
  where c.SupportRepId = e.EmployeeId
  and i.CustomerId = c.CustomerId) as OneTotal
group by EmployeeName
order by TotalSales
