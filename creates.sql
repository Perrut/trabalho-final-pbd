create table Momento (
	id bigserial primary key,
	minutos integer not null,
	tempo integer not null
);

create table Gol (
	id bigserial primary key,
	jogo_id bigint not null,
	artilheiro_id bigint not null,
	assistencia_id bigint,
	momento_id bigint not null
);

create table Jogador (
	id bigserial primary key,
	nome varchar(255),
	data_nascimento date not null,
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
	punicao_id integer not null,
	tipo_jogada_id bigint not null,
	momento_id bigint not null
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

alter table Gol
add constraint gol_jogo_fk
foreign key (jogo_id)
references Jogo(id)
on update cascade
on delete cascade;

alter table Gol 
add constraint gol_artilheiro_fk
foreign key (artilheiro_id)
references Jogador(id)
on update cascade
on delete cascade;

alter table Gol 
add constraint gol_assistencia_fk
foreign key (assistencia_id)
references Jogador(id)
on update cascade
on delete cascade;

alter table Gol
add constraint gol_momento_fk
foreign key (momento_id)
references Momento(id)
on update cascade
on delete cascade;

alter table Jogador
add constraint jogador_posicao_fk
foreign key (posicao_id)
references Posicao(id)
on update cascade
on delete restrict;

alter table Arbitro
add constraint arbitro_estado_fk
foreign key (estado_id)
references Estado(id)
on update cascade
on delete restrict;

alter table Arbitro
add constraint arbitro_tipo_arbitro_fk
foreign key (tipo_arbitro_id)
references TipoArbitro(id)
on update cascade
on delete cascade;

alter table Jogo
add constraint jogo_arbitro_fk
foreign key (arbitro_id)
references Arbitro(id)
on update cascade
on delete restrict;

alter table Jogo
add constraint jogo_auxiliar_1_fk
foreign key (auxiliar_1_id)
references Arbitro(id)
on update cascade
on delete restrict;

alter table Jogo
add constraint jogo_auxiliar_2_fk
foreign key (auxiliar_2_id)
references Arbitro(id)
on update cascade
on delete restrict;

alter table Jogo
add constraint jogo_quarto_arbitro_fk
foreign key (quarto_arbitro_id)
references Arbitro(id)
on update cascade
on delete restrict;

alter table Jogo
add constraint jogo_rodada_fk
foreign key (rodada_id)
references Rodada(id)
on update cascade
on delete cascade;

alter table Jogo
add constraint jogo_mandante_fk
foreign key (mandante_id)
references Equipe(id)
on update cascade
on delete cascade;

alter table Jogo
add constraint jogo_visitante_fk
foreign key (visitante_id)
references Equipe(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_jogo_fk
foreign key (jogo_id)
references Jogo(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_executor_fk
foreign key (executor_id)
references Jogador(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_receptor_fk
foreign key (receptor_id)
references Jogador(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_tipo_jogada_fk
foreign key (tipo_jogada_id)
references TipoJogada(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_punicao_fk
foreign key (punicao_id)
references Punicao(id)
on update cascade
on delete cascade;

alter table Jogada
add constraint jogada_momento_fk
foreign key (momento_id)
references Momento(id)
on update cascade
on delete cascade;

alter table Campeonato
add constraint campeonato_organizador_fk
foreign key (organizador_id)
references Organizador(id)
on update cascade
on delete restrict;

alter table Campeonato
add constraint campeonato_temporada_fk
foreign key (temporada_id)
references Temporada(id)
on update cascade
on delete cascade;

alter table Rodada
add constraint rodada_campeonato_fk
foreign key (campeonato_id)
references Campeonato(id)
on update cascade
on delete cascade;

alter table JogadorTemporadaEquipe 
add constraint jogador_temporada_equipe_equipe_fk
foreign key (equipe_id)
references Equipe(id)
on update cascade
on delete cascade;

alter table JogadorTemporadaEquipe 
add constraint jogador_temporada_equipe_jogador_fk
foreign key (jogador_id)
references Jogador(id)
on update cascade
on delete cascade;

alter table JogadorTemporadaEquipe 
add constraint jogador_temporada_equipe_temporada_fk
foreign key (temporada_id)
references Temporada(id)
on update cascade
on delete cascade;

alter table Organizador 
add constraint organizador_estado_fk
foreign key (estado_id)
references Estado(id)
on update cascade
on delete cascade;

alter table Equipe 
add constraint equipe_estado_fk
foreign key (estado_id)
references Estado(id)
on update cascade
on delete cascade;

alter table TreinadorTemporadaEquipe
add constraint treinador_temporada_equipe_equipe_fk
foreign key (equipe_id)
references Equipe(id)
on update cascade
on delete cascade;

alter table TreinadorTemporadaEquipe
add constraint treinador_temporada_equipe_treinador_fk
foreign key (treinador_id)
references Treinador(id)
on update cascade
on delete cascade;

alter table TreinadorTemporadaEquipe
add constraint treinador_temporada_equipe_temporada_fk
foreign key (temporada_id)
references Temporada(id)
on update cascade
on delete cascade;

alter table Treinador
add constraint treinador_estado_fk
foreign key (estado_id)
references Estado(id)
on update cascade
on delete restrict;

alter table Estadio
add constraint estadio_estado_fk
foreign key (estado_id)
references Estado(id)
on update cascade
on delete restrict;
