SELECT 
	user_name AS usuario,
	IF (max((YEAR(last_reproduction))) < 2021, 'Usuário inativo', 'Usuário ativo') AS condicao_usuario
FROM SpotifyClone.history_songs s
INNER JOIN SpotifyClone.users u ON u.users_id = s.users_id
GROUP BY usuario 
ORDER BY usuario