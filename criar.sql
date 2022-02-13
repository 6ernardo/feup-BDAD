.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--UTILIZADOR
create table Utilizador(
	id INTEGER PRIMARY KEY,
	username VARCHAR(20) not null UNIQUE,
	email VARCHAR(50) not null UNIQUE,
	password VARCHAR(20) not null CHECK(length(password) >= 8),
	telemovel INTEGER UNIQUE CHECK(length(telemovel) = 9),
	foto VARCHAR(100) default 'fotoPerfil',
	status INTEGER CONSTRAINT fk_utilizador_status REFERENCES Status(id)
);

--BLOQUEADO
create table Bloqueado(
	utilizadorQueBloqueia INTEGER CONSTRAINT fk_bloqueado_utilizadorquebloqueia REFERENCES Utilizador(id),
	utilizadorBloqueado INTEGER CONSTRAINT fk_bloqueado_utilizadorbloqueado REFERENCES Utilizador(id) CHECK(utilizadorQueBloqueia != utilizadorBloqueado),
	data DATETIME not null,
	CONSTRAINT pk_bloqueado PRIMARY KEY(utilizadorQueBloqueia, utilizadorBloqueado)
);

--PEDIDO_AMIZADE
create table PedidoAmizade(
	utilizadorQueEnvia INTEGER CONSTRAINT fk_pedidoamizade_utilizadorqueenvia REFERENCES Utilizador(id),
	utilizadorQueRecebe INTEGER CONSTRAINT fk_pedidoamizade_utilizadorquerecebe REFERENCES Utilizador(id) CHECK(utilizadorQueEnvia != utilizadorQueRecebe),
	data DATETIME not null,
	CONSTRAINT pk_pedidoamizade PRIMARY KEY(utilizadorQueEnvia, utilizadorQueRecebe)
);

--AMIZADE_ACEITE
create table AmizadeAceite(
	utilizadorQueEnvia INTEGER CONSTRAINT fk_amizadeaceite_utilizadorqueenvia REFERENCES Utilizador(id),
	utilizadorQueAceita INTEGER CONSTRAINT fk_amizadeaceite_utilizadorqueaceita REFERENCES Utilizador(id) CHECK(utilizadorQueEnvia != utilizadorQueAceita),
	data DATETIME not null,
	CONSTRAINT pk_amizadeaceite PRIMARY KEY(utilizadorQueEnvia, utilizadorQueAceita)
);

--STATUS
create table Status(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) UNIQUE,
	descricao TEXT not null
);

--MUDAR_STATUS
create table MudarStatus(
	utilizador INTEGER CONSTRAINT fk_mudarstatus_utilizador REFERENCES Utilizador(id),
	status INTEGER CONSTRAINT fk_mudarstatus_status REFERENCES Status(id),
	horaAlteracao DATETIME not null,
	CONSTRAINT pk_mudarstatus PRIMARY KEY(utilizador, status)
);

--SERVIDOR
create table Servidor(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) not null,
	foto VARCHAR(100) default 'fotoServidor',
	dataCriacao DATETIME not null
);

--PAPEL_NO_SERVIDOR
create table PapelNoServidor(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(30)
);

--PERMISSAO
create table Permissao(
	id INTEGER PRIMARY KEY,
	nome CHAR(30) UNIQUE,
	descricao VARCHAR(200) not null
);

--PERMISSAO_PAPEL
create table PermissaoPapel(
	permissao INTEGER CONSTRAINT fk_permissaopapel_permissao REFERENCES Permissao(id),
	papel INTEGER CONSTRAINT fk_permissaopapel_papel REFERENCES PapelNoServidor(id),
	CONSTRAINT pk_permissaopapel PRIMARY KEY(permissao, papel)
);

--UTILIZADOR_SERVIDOR_PAPEL
create table UtilizadorServidorPapel(
	utilizador INTEGER CONSTRAINT fk_utilizadorservidorpapel_utilizador REFERENCES Utilizador(id),
	servidor INTEGER CONSTRAINT fk_utilizadorservidorpapel_servidor REFERENCES Servidor(id),
	papel INTEGER CONSTRAINT fk_utilizadorservidorpapel_papel REFERENCES PapelNoServidor(id),
	CONSTRAINT pk_utilizadorservidorpapel PRIMARY KEY(utilizador, servidor)
);

--GRUPO_DE_CANAIS
create table GrupoDeCanais(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) not null,
	servidor INTEGER CONSTRAINT fk_grupodecanais_servidor REFERENCES Servidor(id)
);

--TIPO_CANAL
create table TipoCanal(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) not null
);

--CANAL
create table Canal(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) not null,
	tipo INTEGER CONSTRAINT fk_canal_tipo REFERENCES TipoCanal(id),
	grupo INTEGER CONSTRAINT fk_canal_grupo REFERENCES GrupoDeCanais(id),
	acesso INTEGER DEFAULT 0  --se 0 é publico, se 1 privado (apenas acessível para pessoas com permissão especifica)
);

--CHAMADA
create table Chamada(
	id INTEGER PRIMARY KEY,
	canal INTEGER CONSTRAINT fk_chamada_canal REFERENCES Canal(id),
	horaInicio DATETIME not null,
	horaFim DATETIME,
	utilizadorQueInicia INTEGER CONSTRAINT fk_chamada_utilizadorqueinicia REFERENCES Utilizador(id)
);

--PARTICIPACAO
create table Participacao(
	chamada INTEGER CONSTRAINT fk_participacao_chamada REFERENCES Chamada(id),
	utilizadorEmChamada INTEGER CONSTRAINT fk_participacao_utilizadoremchamada REFERENCES Utilizador(id),
	horaEntrada DATETIME not null,
	horaSaida DATETIME not null,
	CONSTRAINT pk_participacao PRIMARY KEY(chamada, utilizadorEmChamada, horaEntrada)
);

--BOT
create table Bot(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) not null UNIQUE,
	foto VARCHAR(100) default 'fotoBot'
);

--BOT_SERVIDOR
create table BotServidor(
	bot INTEGER CONSTRAINT fk_botservidor_bot REFERENCES Bot(id),
	servidor INTEGER CONSTRAINT fk_botservidor_servidor REFERENCES Servidor(id),
	CONSTRAINT pk_botservidor PRIMARY KEY(bot, servidor)
);

--MENSAGEM
create table Mensagem(
	id INTEGER PRIMARY KEY,
	canal INTEGER CONSTRAINT fk_mensagem_canal REFERENCES Canal(id),
	data DATETIME not null,
	conteudo TEXT not null,
	destaque INTEGER default '0',	-- 0 = nao destacada, 1 = destacada
	ficheiroAnexado VARCHAR(50),
	utilizadorQueEnvia INTEGER CONSTRAINT fk_mensagem_utilizadorqueenvia REFERENCES Utilizador(id) CHECK(botQueEnvia == null),
	botQueEnvia INTEGER CONSTRAINT fk_mensagem_botqueenvia REFERENCES Bot(id) CHECK(utilizadorQueEnvia == null)
);

--REACAO
create table Reacao(
	mensagem INTEGER CONSTRAINT fk_reacao_mensagem REFERENCES Mensagem(id),
	utilizador INTEGER CONSTRAINT fk_reacao_utilizador REFERENCES Utilizador(id),
	texto VARCHAR(15),	--emoji
	CONSTRAINT pk_reacao PRIMARY KEY(mensagem, utilizador)
);
