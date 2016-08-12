/* Provide a query that shows the most purchased Media Type*/

select 
  m.Name,
  count(il.TrackId) as mediaSold
from InvoiceLine il, Track t, MediaType m
where il.TrackId = t.TrackId
and t.MediaTypeId = m.MediaTypeId
group by m.MediaTypeId
order by MediaSold desc
limit 3
