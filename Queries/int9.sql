.mode columns
.headers on
.nullvalue NULL

-- 9) Mostra o utilizador com mais amigos 

SELECT username, SUM(UE+UA) AS FriendNr, UE, UA
FROM Utilizador, (
    SELECT utilizadorQueEnvia, count(utilizadorQueEnvia) AS UE
    FROM AmizadeAceite
    GROUP BY utilizadorQueEnvia
), (
    SELECT UtilizadorQueAceita, count(UtilizadorQueAceita) AS UA
    FROM AmizadeAceite
    GROUP BY UtilizadorQueAceita
)
WHERE utilizadorQueEnvia=UtilizadorQueAceita AND Utilizador.id=utilizadorQueEnvia
GROUP BY Utilizador.id
ORDER BY FriendNr DESC 
LIMIT 1;