/* Provide a query that shows the top 3 best selling artists*/

select 
  a.Name,
  count(il.TrackId) as tracksSold
from InvoiceLine il, Track t, Album b, Artist a
where il.TrackId = t.TrackId
and t.AlbumId = b.AlbumId
and b.ArtistId = a.ArtistId
group by a.ArtistId
order by TracksSold desc
limit 3
