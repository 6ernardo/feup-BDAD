.mode columns
.headers on
.nullvalue NULL

-- 10) Número total de interações (mensagens, chamadas, reações) de cada utilizador 

SELECT username, M+R+P AS Interações, M , R , P
FROM Utilizador, (
    SELECT utilizadorQueEnvia, count(utilizadorQueEnvia) AS M
    FROM Mensagem
    GROUP BY utilizadorQueEnvia
), (
    SELECT utilizador, count(utilizador) AS R
    FROM Reacao
    GROUP BY utilizador    
), (
    SELECT utilizadorEmChamada, count(utilizadorEmChamada) AS P
    FROM Participacao
    GROUP BY utilizadorEmChamada
)
WHERE Utilizador.id=utilizadorQueEnvia AND Utilizador.id=utilizador AND Utilizador.id=utilizadorEmChamada
GROUP BY Utilizador.id;