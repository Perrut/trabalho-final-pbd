create table Momento (
	id bigserial primary key,
	minutos integer not null,
	tempo integer not null
);

create table Gol (
	id bigserial primary key,
	jogo_id bigint not null,
	artilheiro_id bigint not null,
	assistencia_id bigint
);

create table Jogador (
	id bigserial primary key,
	nome varchar(255),
	data_nascimento DATE NOT NULL DEFAULT CURRENT_DATE,
	posicao_id bigint not null
);

create table Posicao (
	id serial primary key,
	nome varchar(255) unique not null
);

create table Arbitro (
	id bigserial primary key,
	nome varchar(255),
	data_nascimento date not null,
	estado_id bigint not null,
	tipo_arbitro_id integer not null
);

create table TipoArbitro (
	id serial primary key,
	tipo varchar(255) unique not null
);

create table Jogo (
	id bigserial primary key,
	arbitro_id bigint not null,
	auxiliar_1_id bigint not null,
	auxiliar_2_id bigint not null,
	quarto_arbitro_id bigint not null,
	rodada_id bigint not null,
	mandante_id bigint not null,
	visitante_id bigint not null
);

create table Jogada (
	id bigserial primary key,
	jogo_id bigint not null,
	executor_id bigint not null,
	receptor_id bigint,
	tipo_jogada_id bigint not null
);

create table TipoJogada (
	id serial primary key,
	tipo varchar(255) unique not null
);

create table Campeonato (
	id bigserial primary key,
	organizador_id bigint not null,
	nome varchar(255) not null,
	temporada_id bigint not null
);

create table Rodada (
	id bigserial primary key,
	numero integer not null,
	campeonato_id bigserial
);

create table Punicao (
	id serial primary key,
	tipo varchar(255) unique not null
);

create table JogadorTemporadaEquipe (
	id bigserial primary key,
	equipe_id bigint not null,
	jogador_id bigint not null,
	temporada_id bigint not null,
	entrada date,
	saida date
);

create table Temporada (
	id bigserial primary key,
	ano integer not null
);

create table Organizador (
	id bigserial primary key,
	estado_id integer not null,
	nome varchar(255)
);

create table Equipe (
	id bigserial primary key,
	nome varchar(255),
	estado_id bigint not null
);

create table TreinadorTemporadaEquipe (
	id bigserial primary key,
	equipe_id bigint not null,
	treinador_id bigint not null,
	temporada_id bigint not null,
	entrada date,
	saida date
);

create table Treinador (
	id bigserial primary key,
	nome varchar(255),
	nascimento date not null,
	estado_id bigint not null
);

create table Estado (
	id bigserial primary key,
	nome varchar(255)
);

create table Estadio (
	id bigserial primary key,
	nome varchar(255) not null,
	capacidade integer not null,
	estado_id bigint not null
);

---ALTER TABLE Gol
---ADD CONSTRAINT artilheiro_fk
---FOREIGN KEY (artilheiro_id)
---REFERENCES Jogador(id)
---on delete cascade
---on update cascade;
