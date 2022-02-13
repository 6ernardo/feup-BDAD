.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

-- 1) Verificar se quando uma mensagem se liga a um canal, se o utilizador tem acesso ao canal

CREATE TRIGGER IF NOT EXISTS T1
BEFORE INSERT ON Mensagem
WHEN ((NEW.canal = (SELECT id FROM Canal WHERE id = New.Canal AND acesso = 1)) AND (NEW.utilizadorQueEnvia != (SELECT utilizador FROM UtilizadorServidorPapel JOIN PermissaoPapel WHERE UtilizadorServidorPapel.papel = PermissaoPapel.papel AND permissao = 3))) --AND (NEW.canal = (SELECT id FROM Canal WHERE Canal.acesso = 1))
    BEGIN
        SELECT RAISE(ABORT, "O utilizador não tem acesso ao canal.");
    END;
