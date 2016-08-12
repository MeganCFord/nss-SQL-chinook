/*Provide a query showing only the Employees who are Sales Agents.*/

select 
  e.LastName || "," || e.FirstName as FullName,
  e.EmployeeId, 
  strftime("%m/%d/%Y", e.HireDate) as DateHired,
  e.Title
from Employee as e
where e.Title like "Sales S%"
order by FullName
