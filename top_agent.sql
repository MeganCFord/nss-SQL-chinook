/* Which sales agent made the most in sales over all?*/
 select 
  reps.EmployeeId,
  EmployeeName,
  max(Reps.salesTotal) as TotalSales
 from
  (select 
    e.EmployeeId, 
    e.LastName ||", "|| e.FirstName as EmployeeName,  
    round(sum(i.Total), 2) as salesTotal
  from Invoice i, employee e, customer c
  where c.SupportRepId = e.EmployeeId
  and i.CustomerId = c.CustomerId
  group by EmployeeName) as Reps
