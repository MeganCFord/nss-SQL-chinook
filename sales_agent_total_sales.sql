/* Provide a query that shows total sales made by each sales agent.*/
 
select 
  e.EmployeeId, 
  e.LastName ||", "|| e.FirstName as EmployeeName,  
  round(sum(i.Total), 2) as salesTotal
from Invoice i, employee e, customer c
where c.SupportRepId = e.EmployeeId
and i.CustomerId = c.CustomerId
group by EmployeeName
