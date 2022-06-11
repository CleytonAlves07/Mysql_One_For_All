SELECT usuario.nome AS usuario,
IF (MAX(YEAR(data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario 
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico_reproducoes
ON usuario.id = historico_reproducoes.id_usuario
GROUP BY usuario;