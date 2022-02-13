.mode columns
.headers on
.nullvalue NULL

-- 2) Mostra todos os servidores que contém "gaming" no nome

SELECT *
FROM Servidor
WHERE nome like '%gaming%';