/*Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table*/

select 
  count(pt.TrackId) as NumOfTracks,
  p.PlaylistId,
  p.Name
from Playlist p, PlaylistTrack pt
where p.PlaylistId = pt.PlaylistId
group by pt.PlaylistId
order by NumOfTracks desc
