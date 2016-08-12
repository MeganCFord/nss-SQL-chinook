/* Which sales agent made the most in sales in 2009?*/
 select 
  reps.EmployeeId,
  EmployeeName,
  max(Reps.salesTotal) as Total2009Sales
 from
  (select 
    e.EmployeeId, 
    e.LastName ||", "|| e.FirstName as EmployeeName,  
    round(sum(i.Total), 2) as salesTotal
  from Invoice i, employee e, customer c
  where c.SupportRepId = e.EmployeeId
  and i.CustomerId = c.CustomerId
  and strftime("%Y", i.InvoiceDate) = "2009"
  group by EmployeeName) as Reps
  
