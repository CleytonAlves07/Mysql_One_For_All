SELECT artistas.name AS artista,
album.nome AS album
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.album
ON artistas.id = album.id_artista
WHERE artistas.name = 'Walter Phoenix'
ORDER BY album;