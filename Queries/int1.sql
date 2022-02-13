.mode columns
.headers on
.nullvalue NULL

-- 1) Mostra o número total de utilizadores na plataforma

SELECT count(*) AS Utilizadores_na_Plataforma
FROM Utilizador;