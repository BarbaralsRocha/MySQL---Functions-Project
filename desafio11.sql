SELECT song_name AS nome_musica, REPLACE (song_name, 'Her Own','Trybe') AS novo_nome FROM SpotifyClone.songs WHERE song_name= 'Dance With Her Own'
UNION
SELECT song_name, REPLACE (song_name, 'Silly','Nice') FROM SpotifyClone.songs WHERE song_name= "Let's Be Silly"
UNION
SELECT song_name, REPLACE (song_name, 'Circus','Pull Request') FROM SpotifyClone.songs WHERE song_name= 'Magic Circus'
UNION
SELECT song_name, REPLACE (song_name, 'Inner Fire','Project') FROM SpotifyClone.songs WHERE song_name= 'Troubles Of My Inner Fire'
UNION
SELECT song_name, REPLACE (song_name, 'Streets','Code Review') FROM SpotifyClone.songs WHERE song_name= 'Without My Streets'