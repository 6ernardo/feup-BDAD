.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

SELECT * FROM Chamada;

INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (11, '2022-01-12 20:35:00', NULL, 10);

SELECT * FROM Chamada;
