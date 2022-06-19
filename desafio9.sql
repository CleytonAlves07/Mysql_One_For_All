SELECT COUNT(historico_reproducoes.id_usuario) 
AS quantidade_musicas_no_historico 
FROM historico_reproducoes
INNER JOIN usuario
ON historico_reproducoes.id_usuario = usuario.id
WHERE usuario.nome = 'Bill';
