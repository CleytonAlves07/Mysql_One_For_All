SELECT musicas.nome AS nome,
count(*) AS reproducoes
FROM SpotifyClone.musicas As musicas
INNER JOIN SpotifyClone.historico_reproducoes AS historico
ON musicas.id = historico.id_musica
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.id = historico.id_usuario
INNER JOIN SpotifyClone.plano AS plano
ON plano.id = usuario.id_plano
WHERE plano.nome IN ('Gratuito', 'Pessoal')
GROUP BY nome
ORDER BY nome;