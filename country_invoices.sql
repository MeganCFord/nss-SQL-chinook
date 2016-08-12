/*Provide a query that shows the # of invoices per country.*/

select 
count(i.InvoiceId) as NumOfInvoices,
i.BillingCountry
from Invoice i
group by i.BillingCountry
order by NumOfInvoices desc

