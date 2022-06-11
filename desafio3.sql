SELECT 
  usuario.nome AS `usuario`, 
  COUNT(historico_reproducoes.id) AS `qtde_musicas_ouvidas`,
  ROUND(SUM(musicas.duracao)/60, 2) AS `total_minutos`
FROM SpotifyClone.usuario 
  JOIN SpotifyClone.historico_reproducoes
  ON SpotifyClone.usuario.id = SpotifyClone.historico_reproducoes.id_usuario 
  JOIN SpotifyClone.musicas
  ON SpotifyClone.musicas.id = SpotifyClone.historico_reproducoes.id_musica 
GROUP BY `usuario`
ORDER BY `usuario`;