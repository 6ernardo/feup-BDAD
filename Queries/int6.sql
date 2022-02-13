.mode columns
.headers on
.nullvalue NULL

-- 6) Mostra a mensagem com mais reações

SELECT Mensagem.id AS ID, Mensagem.canal AS Canal, Mensagem.data AS Data, Mensagem.conteudo AS Conteudo,
username AS UtilizadorQueEnviou, count(mensagem) AS Num_Reações
FROM Mensagem JOIN Reacao JOIN Utilizador
ON Mensagem.id = Reacao.mensagem AND Mensagem.utilizadorQueEnvia=Utilizador.id
GROUP BY mensagem
ORDER BY Num_Reações DESC
LIMIT 1;

