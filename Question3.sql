/*Q3
Using the Track and Album tables, write a query that returns all the songs that
start with the letter 'A' and the composer field is not empty. Your query 
should return the name of the song, the name of the composer, and the title of
the album.*/
SELECT Track.Name,Track.Composer,Album.Title
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
WHERE Track.Name LIKE 'A%'AND Track.Composer NOT NULL ;