SELECT 
	u.user_name AS usuario,
	COUNT(h.users_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(duration_time_seconds/60),2)AS total_minutos
FROM SpotifyClone.history_songs h
INNER JOIN SpotifyClone.users u ON h.users_id=u.users_id
INNER JOIN SpotifyClone.songs s ON s.song_id=h.song_id
GROUP BY h.users_id
ORDER BY usuario