SELECT  
	s.song_name AS nome, 
	COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.history_songs h
INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users u ON u.users_id = h.users_id
INNER JOIN SpotifyClone.plans p ON p.id = u.plans_id
WHERE plans = 'gratuito' OR plans = 'pessoal'
GROUP BY s.song_name;

