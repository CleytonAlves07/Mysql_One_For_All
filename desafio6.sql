SELECT 
MIN(valor) AS faturamento_minimo,
MAX(valor) AS faturamento_maximo,
ROUND(AVG(valor), 2) AS faturamento_medio,
SUM(valor) AS faturamento_total  
FROM SpotifyClone.plano
INNER JOIN SpotifyClone.usuario 
ON plano.id = usuario.id_plano; 