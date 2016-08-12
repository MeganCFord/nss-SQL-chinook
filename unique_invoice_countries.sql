/*Provide a query showing a unique/distinct list of billing countries from the Invoice table.*/

select distinct
  i.BillingCountry
from Invoice as i
order by i.BillingCountry
