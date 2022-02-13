.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

SELECT * FROM Mensagem;

INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (6, '2022-01-10 10:00:00', 'Bom estudo!', 0, NULL, 2);

SELECT * FROM Mensagem;	-- Utilizador 2 não tem acesso ao canal, por isso, a mensagem não deve ser inserida

INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (6, '2022-01-10 12:30:00', 'Tentando estudar...', 0, NULL, 3);

SELECT * FROM Mensagem; -- Utilizador 3 tem acesso ao canal, por isso, a mensagem deve ser inserida