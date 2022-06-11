SELECT artistas.name AS artista,
album.nome AS album,
COUNT(usuario_artista.id_artista) AS seguidores
FROM SpotifyClone.album
INNER JOIN usuario_artista
ON album.id_artista = usuario_artista.id_artista
INNER JOIN artistas
ON artistas.id = usuario_artista.id_artista 
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album; 