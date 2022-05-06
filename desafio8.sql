SELECT
artist_name AS artista, album_name AS album
FROM SpotifyClone.album a
INNER JOIN SpotifyClone.artist art ON art.artist_id = a.artist_id
WHERE artist_name = 'Walter Phoenix'