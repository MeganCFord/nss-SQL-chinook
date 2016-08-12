/*Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre*/

select 
  m.Name as Media,
  g.Name as GenreName,
  a.Title as AlbumName,
  t.Name as TrackName
from Track t, MediaType m, Album a, Genre g
where t.MediaTypeId = m.MediaTypeId 
and t.GenreId = g.GenreId
and t.AlbumId = a.AlbumId
order by Media
