.mode columns
.headers on
.nullvalue NULL

-- 8) Mostra o servidor com mais membros

SELECT nome, count(servidor) AS MemberNr
FROM UtilizadorServidorPapel, Servidor
WHERE nome in (SELECT nome FROM Servidor WHERE Servidor.id=servidor)
GROUP BY servidor
ORDER BY MemberNr DESC
LIMIT 1;