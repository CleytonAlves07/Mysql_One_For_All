SELECT musicas.nome AS cancao, 
COUNT(historico_reproducoes.id_musica) AS reproducoes 
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.historico_reproducoes
ON musicas.id = historico_reproducoes.id_musica
GROUP BY musicas.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;