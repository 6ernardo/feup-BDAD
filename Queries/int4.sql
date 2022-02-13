.mode columns
.headers on
.nullvalue NULL

-- 4) Mostra os amigos em segundo grau (amigos dos amigos) de cada um dos utilizadores

SELECT DISTINCT N AS Utilizador, U.username AS Amigo2oGrau
FROM (
      SELECT DISTINCT N, F, B.id AS F1
      FROM ( 
            SELECT id AS F, username AS N
            FROM AmizadeAceite, Utilizador A
            WHERE AmizadeAceite.UtilizadorQueAceita=A.id OR AmizadeAceite.utilizadorQueEnvia=A.id),
            AmizadeAceite, Utilizador B
      WHERE (AmizadeAceite.utilizadorQueEnvia=F AND AmizadeAceite.UtilizadorQueAceita=B.id) OR 
            (AmizadeAceite.utilizadorQueEnvia=B.id AND AmizadeAceite.UtilizadorQueAceita=F)
      ), AmizadeAceite, Utilizador U
WHERE (AmizadeAceite.utilizadorQueEnvia=F1 AND AmizadeAceite.UtilizadorQueAceita=U.id AND U.id<>F) OR 
      (AmizadeAceite.utilizadorQueEnvia=U.id AND AmizadeAceite.UtilizadorQueAceita=F1 AND U.id<>F)
ORDER BY F;