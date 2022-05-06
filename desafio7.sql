SELECT 
	distinct artist_name AS artista, 
	album_name AS album,
    count(users_id) AS seguidores
FROM SpotifyClone.followers f
INNER JOIN SpotifyClone.album a ON a.artist_id = f.artist_id
INNER JOIN SpotifyClone.artist art ON art.artist_id = a.artist_id
group by album, artista
ORDER BY seguidores desc, artista asc, album asc