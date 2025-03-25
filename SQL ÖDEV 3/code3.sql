-- 2009 yılında "USA" ülkesine ait tüm faturaların toplamı
SELECT SUM(total) AS total_bills_amount
FROM invoice
WHERE billing_country = 'USA'
AND EXTRACT(YEAR FROM invoice_date) = 2009;

-- Track, PlaylistTrack ve Playlist tablolarını birleştirerek tüm parçaların listelenmesi
SELECT 
    track.track_id, 
    track.name AS track_name, 
    playlist.name AS playlist_name
FROM track
JOIN playlisttrack ON track.track_id = playlisttrack.track_id
JOIN playlist ON playlisttrack.playlist_id = playlist.playlist_id;

-- "Let There Be Rock" albümüne ait parçaların ve sanatçıların listelenmesi
SELECT 
    track.name AS track_name,
    artist.name AS artist_name,
    track.milliseconds
FROM track
JOIN album ON track.album_id = album.album_id
JOIN artist ON album.artist_id = artist.artist_id
WHERE album.title = 'Let There Be Rock'
ORDER BY track.milliseconds DESC;
