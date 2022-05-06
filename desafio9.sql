SELECT COUNT(s.users_id) AS quantidade_musicas_no_historico FROM SpotifyClone.history_songs s
INNER JOIN SpotifyClone.users u ON u.users_id=s.users_id
WHERE user_name = 'Bill'