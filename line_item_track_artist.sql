/*Provide a query that includes the purchased track name 
AND artist name with each invoice line item.*/

select 
  l.InvoiceLineId,
  t.Name,
  a.Name
from InvoiceLine l, Track t, Artist a, Album b
where t.TrackId = l.TrackId
and t.AlbumId = b.AlbumId
and b.ArtistId = a.ArtistId
order by a.Name
