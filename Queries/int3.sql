.mode columns
.headers on
.nullvalue NULL

-- 3) Mostra os pedidos de amizade que são bloqueados

SELECT A.username AS UtilizadorQueBloqueia, B.username AS UtilizadorBloqueado
FROM Bloqueado, Utilizador A, Utilizador B
WHERE Bloqueado.utilizadorQueBloqueia=A.id AND Bloqueado.UtilizadorBloqueado=B.id;