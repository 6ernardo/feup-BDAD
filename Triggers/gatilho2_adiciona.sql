.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

-- 2) Quando uma amizade é aceite, elimina-se o pedido de amizade

CREATE TRIGGER IF NOT EXISTS T2
AFTER INSERT ON AmizadeAceite
BEGIN
	DELETE FROM PedidoAmizade 
	WHERE (utilizadorQueEnvia = NEW.utilizadorQueEnvia AND utilizadorQueRecebe = NEW.utilizadorQueAceita);
END;
