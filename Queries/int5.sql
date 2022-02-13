.mode columns
.headers on
.nullvalue NULL

-- 5) Mostra os utilizadores que têm acesso a canais privados

SELECT username
FROM Utilizador, (
    SELECT DISTINCT id AS A
    FROM Utilizador
    INTERSECT
    SELECT utilizador
    FROM UtilizadorServidorPapel JOIN PermissaoPapel
    ON UtilizadorServidorPapel.papel = PermissaoPapel.papel
    WHERE PermissaoPapel.permissao = 3
    ORDER BY id ASC)
WHERE Utilizador.id=A;

