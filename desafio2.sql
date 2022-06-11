SELECT * FROM 
(SELECT COUNT(id) 
AS cancoes
FROM SpotifyClone.musicas) AS X,
(SELECT COUNT(id) 
AS artistas 
FROM SpotifyClone.artistas) AS Y,
(SELECT COUNT(id) 
AS albuns 
FROM SpotifyClone.album) AS Z;
