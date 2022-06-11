SELECT artistas.name AS artistas,
album.nome AS album,
COUNT(usuario_artista.id_artista) AS seguidores
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.album
ON artistas.id = album.id_artista
INNER JOIN SpotifyClone.usuario_artista
ON artistas.id = usuario_artista.id_artista
GROUP BY artistas 
ORDER BY seguidores DESC, artistas;

SELECT artistas.name AS artistas,
album.nome AS album,
COUNT(usuario_artista.id_artista) AS seguidores
FROM SpotifyClone.album
INNER JOIN SpotifyClone.usuario_artista
ON album.id_artista = usuario_artista.id_artista 
INNER JOIN SpotifyClone.artistas
ON artistas.id = usuario_artista.id_artista
GROUP BY artistas 
ORDER BY seguidores DESC, artistas;

SELECT
  `artists`.`artist_name` AS `artista`,
  `albums`.`album_name` AS `album`,
  COUNT(followed_artist.artist_id) AS `seguidores`
FROM `albums`
  JOIN `followed_artist`
  ON `albums`.`artist_id` = `followed_artist`.`artist_id`
  JOIN `artists`
  ON `artists`.`id` = `followed_artist`.`artist_id`
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`; 