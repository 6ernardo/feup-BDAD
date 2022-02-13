.mode columns
.headers on
.nullvalue NULL

-- 7) Mostra o par de utilizadores que reagiram a mais mensagens entre si

-- As nReacoesTotaisAoUtilizador não são necessariamente o número total de reações do UtilizadorQueMaisReagiuAoUtilizador, mas sim o número total de reações que o utilizadorQueEnvia recebeu

SELECT utilizadorQueEnvia AS ID, U1.username AS "UtilizadorQueEnviouMensag(em/ens)", utilizador AS ID, 
U2.username AS UtilizadorQueMaisReagiuAoUtilizador, count(utilizador) AS nReacoesTotaisAoUtilizador
FROM Mensagem JOIN Reacao JOIN Utilizador U1, Utilizador U2
ON Mensagem.id = Reacao.mensagem
WHERE (utilizadorQueEnvia = U1.id AND utilizador = U2.id)
GROUP BY utilizadorQueEnvia
ORDER BY nReacoesTotaisAoUtilizador DESC
LIMIT 1;