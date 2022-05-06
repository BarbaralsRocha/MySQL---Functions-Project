SELECT 
	COUNT(s.song_id) AS reproducoes, 
	s.song_name AS cancao 
FROM SpotifyClone.history_songs h
INNER JOIN SpotifyClone.songs s ON h.song_id=s.song_id
GROUP BY s.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;