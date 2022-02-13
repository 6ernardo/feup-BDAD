PRAGMA foreign_keys = ON;

--Data: STATUS
INSERT INTO Status (nome, descricao) VALUES ('online', 'o utilizador encontra-se online');
INSERT INTO Status (nome, descricao) VALUES ('offline', 'o utilizador encontra-se offline');
INSERT INTO Status (nome, descricao) VALUES ('DoNotDisturb', 'o utilizador encontra-se online, mas não receberá quaisquer notificações');
INSERT INTO Status (nome, descricao) VALUES ('Invisible', 'o utilizador encontra-se online, mas os outros utilizadores vêm o seu status como offline');

--Data: UTILIZADOR
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('bernas', '6ernardocampos@gmail.com', '45GtGkhQ', 915476695, 'https://bit.ly/3rTX4JX', 1);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('julha', 'julinha3000@gmail.com', 'Da4rZX6t', 934956217, 'https://bit.ly/3dIpKxm', 2);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('Juse', 'jose_brandao_vlc@hotmail.com', 'HaYX3Gd8A', 967031598, 'https://bit.ly/3lYGkxj', 3);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('kimi', 'bastos19duarte@hotmail.com', 'Sgrn4REz', 913214789, 'https://bit.ly/3pRkehd', 3);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('Cubal', 'bcubalios123@gmail.com', 'Z9mf9tS2sUH', 916647582, 'https://bit.ly/3DO0VdZ', 4);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('gaby', 'gabybarbosa@hotmail.com', 'sp6X7NFZ', 930017236, 'https://bit.ly/3IHJTBW', 1);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('edcosta', 'oedgarc0st4@gmail.com', 'ZPc26x2u', 910785824, 'https://bit.ly/33cnnR8', 1);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('nês', 'inesvieira@hotmail.com', 'q5Lg3c2Sx', 915746113, 'https://bit.ly/3lTa6mX', 2);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('Pipa', 'filipafcosta01@gmail.com', 'eHZ662Qs', 932332147, 'https://bit.ly/3GxZli3', 2);
INSERT INTO Utilizador (username, email, password, telemovel, foto, status) VALUES ('An(j)a', 'anitamarcialcardoso@hotmail.com', 'vKDHwb2qECzE', 968803170, 'https://bit.ly/3GvRG3E', 4);

--Data: BLOQUEADO
INSERT INTO Bloqueado (utilizadorQueBloqueia, UtilizadorBloqueado, data) VALUES (1, 5, '2021-12-12 16:00:00');
INSERT INTO Bloqueado (utilizadorQueBloqueia, UtilizadorBloqueado, data) VALUES (2, 6, '2021-12-12 16:30:00');
INSERT INTO Bloqueado (utilizadorQueBloqueia, UtilizadorBloqueado, data) VALUES (3, 7, '2021-12-12 17:00:00');
INSERT INTO Bloqueado (utilizadorQueBloqueia, UtilizadorBloqueado, data) VALUES (4, 8, '2021-12-12 17:30:00');
INSERT INTO Bloqueado (utilizadorQueBloqueia, UtilizadorBloqueado, data) VALUES (5, 9, '2021-12-12 18:00:00');

--Data: PEDIDO_AMIZADE
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (5, 1, '2021-12-11 10:00:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (6, 2, '2021-12-11 10:15:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (7, 3, '2021-12-11 10:30:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (8, 4, '2021-12-11 10:45:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (9, 5, '2021-12-11 11:00:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (10, 5, '2021-12-11 11:15:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (8, 6, '2021-12-11 11:30:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (6, 1, '2021-12-11 11:45:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (4, 2, '2021-12-11 12:00:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (2, 1, '2021-12-11 12:15:00');
INSERT INTO PedidoAmizade (utilizadorQueEnvia, UtilizadorQueRecebe, data) VALUES (10, 2, '2021-12-11 12:20:00');

--Data: AMIZADE_ACEITE
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (10, 5, '2021-12-12 20:00:00');
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (8, 6, '2021-12-12 20:30:00');
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (6, 1, '2021-12-12 21:00:00');
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (4, 2, '2021-12-12 21:30:00');
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (2, 1, '2021-12-12 22:00:00');
INSERT INTO AmizadeAceite (utilizadorQueEnvia, UtilizadorQueAceita, data) VALUES (2, 3, '2021-12-12 22:00:00');

--Data: MUDAR_STATUS
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (1, 1, '2022-01-17 15:00');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (1, 3, '2022-01-17 15:12');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (1, 2, '2022-01-17 16:50');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (2, 1, '2022-01-17 18:30');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (2, 4, '2022-01-17 18:35');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (2, 2, '2022-01-17 19:30');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (6, 1, '2022-01-17 21:00');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (6, 3, '2022-01-17 21:10');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (6, 4, '2022-01-17 22:50');
INSERT INTO MudarStatus (utilizador, status, horaAlteracao) VALUES (6, 2, '2022-01-18 00:01');

--Data: SERVIDOR
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('casota', 'https://bit.ly/31Xs94j', '2020-10-06 09:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('SHEESH', 'https://bit.ly/31ODW53', '2021-03-15 10:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('Fofinz', 'https://bit.ly/3oM4KMa', '2019-02-21 11:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('Quarendrena', 'https://bit.ly/31Xxjxv', '2019-11-04 12:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('GamingSpot', 'https://bit.ly/30hFN1O', '2020-09-17 13:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('salãony', 'https://bit.ly/3GFh7zI', '2020-11-26 14:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('dunas', 'https://bit.ly/3DNw68Y', '2021-05-07 15:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('Sombrinha', 'https://bit.ly/3DHQrwF', '2021-10-05 16:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('theone', 'https://bit.ly/3lZxxet', '2021-11-11 17:00:00');
INSERT INTO Servidor (nome, foto, dataCriacao) VALUES ('LanHouse', 'https://bit.ly/3rXkBcV', '2020-05-15 18:00:00');

--Data: PAPEL_NO_SERVIDOR
INSERT INTO PapelNoServidor (nome) VALUES ('prof');
INSERT INTO PapelNoServidor (nome) VALUES ('admin');
INSERT INTO PapelNoServidor (nome) VALUES ('moderator');
INSERT INTO PapelNoServidor (nome) VALUES ('assistant');
INSERT INTO PapelNoServidor (nome) VALUES ('member');
INSERT INTO PapelNoServidor (nome) VALUES ('student');
INSERT INTO PapelNoServidor (nome) VALUES ('boss');
INSERT INTO PapelNoServidor (nome) VALUES ('employee');
INSERT INTO PapelNoServidor (nome) VALUES ('owner');
INSERT INTO PapelNoServidor (nome) VALUES ('regente');

--Data: PERMISSAO
INSERT INTO Permissao (nome, descricao) VALUES ('ManageRoles', 'criar, remover e editar papeis no servidor');
INSERT INTO Permissao (nome, descricao) VALUES ('Invite', 'convidar novos utilizadores para o servidor');
INSERT INTO Permissao (nome, descricao) VALUES ('PrivateChannelAccess', 'acesso a canais de acesso restrito');
INSERT INTO Permissao (nome, descricao) VALUES ('Kick', 'expulsar temporariamente utilizadores do servidor');
INSERT INTO Permissao (nome, descricao) VALUES ('Ban', 'expulsar permanentemente utilizadores do servidor');
INSERT INTO Permissao (nome, descricao) VALUES ('ManageChannels', 'criar, remover e editar os canais do servidor');
INSERT INTO Permissao (nome, descricao) VALUES ('SendMessage', 'enviar mensagens nos canais do servidor a que tem acesso');
INSERT INTO Permissao (nome, descricao) VALUES ('MuteOthers', 'silenciar o microfone de outros utilizadores numa chamada');
INSERT INTO Permissao (nome, descricao) VALUES ('DeafenOthers', 'desligar a receção de som de outros utilizadores numa chamada');
INSERT INTO Permissao (nome, descricao) VALUES ('RemoveOthers', 'remover outros utilizadores de uma chamada');

--Data: PERMISSAO_PAPEL
INSERT INTO PermissaoPapel (permissao, papel) VALUES (1, 1);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (2, 2);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (3, 3);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (4, 4);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (5, 5);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (6, 6);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (7, 7);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (8, 8);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (9, 9);
INSERT INTO PermissaoPapel (permissao, papel) VALUES (10, 10);

--Data: UTILIZADOR_SERVIDOR_PAPEL
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (1, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (2, 1, 2);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (3, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (4, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (5, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (6, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (7, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (8, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (9, 1, 2);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (10, 1, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (1, 2, 3);
INSERT INTO UtilizadorServidorPapel (utilizador, servidor, papel) VALUES (4, 2, 3);

--Data: GRUPO_DE_CANAIS
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Jogos', 1);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Música', 1);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Estudo', 1);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Memes', 1);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Anuncios', 1);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Jogos', 2);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Música', 2);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Estudo', 2);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Memes', 2);
INSERT INTO GrupoDeCanais (nome, servidor) VALUES ('Canais de Anuncios', 2);

--Data: TIPO_CANAL
INSERT INTO TipoCanal (nome) VALUES ('Texto');
INSERT INTO TipoCanal (nome) VALUES ('Voz');

--Data: CANAL
INSERT INTO Canal (nome, tipo, grupo, acesso) VALUES ('cozinha', 1, 5, 1);
INSERT INTO Canal (nome, tipo, grupo, acesso) VALUES ('jardim', 1, 1, 1);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('closet', 1, 4);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('garagem', 2, 4);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('estudio', 1, 2);
INSERT INTO Canal (nome, tipo, grupo, acesso) VALUES ('escritorio', 1, 3, 1);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('ginasio', 2, 2);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('saladeestar', 2, 1);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('discussão', 2, 5);
INSERT INTO Canal (nome, tipo, grupo, acesso) VALUES ('saladeestudo', 2, 3, 1);
INSERT INTO Canal (nome, tipo, grupo) VALUES ('ginasio1', 2, 2);

--Data: CHAMADA
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (9, '2022-01-10 18:30:00', '2022-01-10 19:30:00', 1);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (8, '2022-01-10 21:30:00', '2022-01-11 00:00:00', 3);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (4, '2022-01-10 23:15:00', '2022-01-11 01:20:00', 8);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (9, '2022-01-10 17:00:00', '2022-01-10 17:45:00', 7);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (7, '2022-01-10 19:45:00', '2022-01-10 19:50:00', 10);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (7, '2022-01-11 19:45:00', '2022-01-11 19:46:00', 10);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (10, '2022-01-12 19:45:00', '2022-01-12 19:50:00', 10);
INSERT INTO Chamada (canal, horaInicio, horaFim, utilizadorQueInicia) VALUES (11, '2022-01-12 20:30:00', NULL, 10);

--Data: PARTICIPAÇÃO
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (1, 1, '2022-01-10 18:30:00', '2022-01-10 19:30:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (1, 3, '2022-01-10 18:32:00', '2022-01-10 19:30:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (2, 1, '2022-01-10 21:30:00', '2022-01-11 00:00:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (2, 3, '2022-01-10 21:35:00', '2022-01-11 00:00:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (3, 1, '2022-01-10 23:15:00', '2022-01-11 01:20:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (3, 3, '2022-01-10 23:16:00', '2022-01-11 01:15:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (4, 1, '2022-01-10 17:00:00', '2022-01-10 17:15:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (4, 3, '2022-01-10 17:06:00', '2022-01-10 17:30:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (4, 4, '2022-01-10 17:20:00', '2022-01-10 17:45:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (5, 1, '2022-01-10 19:45:00', '2022-01-10 19:50:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (6, 1, '2022-01-10 19:45:00', '2022-01-10 19:50:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (7, 1, '2022-01-10 19:45:00', '2022-01-10 19:50:00');
INSERT INTO Participacao (chamada, utilizadorEmChamada, horaEntrada, horaSaida) VALUES (8, 1, '2022-01-10 19:45:00', '2022-01-10 19:50:00');

--Data: BOT
INSERT INTO Bot (nome, foto) VALUES ('Mudae', 'https://bit.ly/3DNAzZA');
INSERT INTO Bot (nome, foto) VALUES ('Dank Memer', 'https://bit.ly/3pTlTTJ');
INSERT INTO Bot (nome, foto) VALUES ('Karuta', 'https://bit.ly/3rZKxVa');
INSERT INTO Bot (nome, foto) VALUES ('Pokétwo', 'https://bit.ly/3oM76ut');
INSERT INTO Bot (nome, foto) VALUES ('ProBot', 'https://bit.ly/30mQ4Kg');
INSERT INTO Bot (nome, foto) VALUES ('Pokémeow', 'https://bit.ly/31Ovu6d');
INSERT INTO Bot (nome, foto) VALUES ('Epic RPG', 'https://bit.ly/3s06XWj');
INSERT INTO Bot (nome, foto) VALUES ('Soccer Guru', 'https://bit.ly/3EOJfQt');
INSERT INTO Bot (nome, foto) VALUES ('OwO', 'https://bit.ly/31WPLpH');
INSERT INTO Bot (nome, foto) VALUES ('Nekotina', 'https://bit.ly/3EOJc7f');

--Data: BOT_SERVIDOR
INSERT INTO BotServidor (bot, servidor) VALUES (1, 1);
INSERT INTO BotServidor (bot, servidor) VALUES (2, 2);
INSERT INTO BotServidor (bot, servidor) VALUES (3, 3);
INSERT INTO BotServidor (bot, servidor) VALUES (4, 4);
INSERT INTO BotServidor (bot, servidor) VALUES (5, 5);
INSERT INTO BotServidor (bot, servidor) VALUES (6, 6);
INSERT INTO BotServidor (bot, servidor) VALUES (7, 7);
INSERT INTO BotServidor (bot, servidor) VALUES (8, 8);
INSERT INTO BotServidor (bot, servidor) VALUES (9, 9);
INSERT INTO BotServidor (bot, servidor) VALUES (10, 10);

--Data: MENSAGEM
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:00:00', 'Olá pessoal!', 0, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:00:00', 'Vamos almoçar juntos amanhã?', 0, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:01:00', 'Vamos!', 0, NULL, 2);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:03:00', 'Siga? Onde e a que horas?', 0, NULL, 3);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:08:00', 'Encontramo-nos as 12:30 em frente á FEUP e decidimos.', 1, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (5, '2022-01-10 23:13:00', 'Combinado!', 0, NULL, 3);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (3, '2022-01-10 12:00:00', 'Alguém tem a solução dos exercicios de MDIS da semana passada?', 0, NULL, 4);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (3, '2022-01-10 12:20:00', 'Também precisava...', 0, NULL, 6);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (3, '2022-01-10 12:35:00', 'Eu tenho, já vou mandar!', 0, NULL, 8);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (3, '2022-01-10 12:37:00', 'Aqui está!', 1, 'https://bit.ly/3DP7xbG', 8);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (1, '2022-01-10 12:37:00', 'Teste', 1, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (2, '2022-01-10 12:37:00', 'Teste', 1, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (6, '2022-01-10 12:37:00', 'Teste', 1, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (6, '2022-01-10 12:45:00', 'Tudo bem?', 0, NULL, 1);
INSERT INTO Mensagem (canal, data, conteudo, destaque, ficheiroAnexado, utilizadorQueEnvia) VALUES (3, '2022-01-10 12:37:00', 'Checkaram?', 0, NULL, 8);

--Data: REAÇÃO
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (2, 4, 'like');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (2, 5, 'dislike');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (2, 7, 'SmileyFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (5, 4, 'SadFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (5, 5, 'AngryFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (5, 7, 'Heart');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (5, 3, 'NerdFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (5, 6, 'PartyFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (10, 4, 'CryingFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (10, 6, 'SleepyFace');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (7, 1, 'dislike');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (14, 5, 'like');
INSERT INTO Reacao (mensagem, utilizador, texto) VALUES (15, 6, 'like');