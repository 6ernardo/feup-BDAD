.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

-- 3) Terminar uma chamada, quando um utilizador inicia uma outra chamada

CREATE TRIGGER IF NOT EXISTS T3
BEFORE INSERT ON Chamada
WHEN (SELECT utilizadorQueInicia FROM Chamada WHERE utilizadorQueInicia = NEW.utilizadorQueInicia)
BEGIN
  	UPDATE Chamada
	SET horaFim = NEW.horaInicio
	WHERE horaFim IS NULL;
END;
