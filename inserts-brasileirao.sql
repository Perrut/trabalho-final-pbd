/*-----------public.estados------------------------*/

Insert Into public.estado (id,nome) Values(12,'Acre');  
 Insert Into public.estado (id,nome) Values(27,'Alagoas');  
 Insert Into public.estado (id,nome) Values(13,'Amazonas');
 Insert Into public.estado (id,nome) Values(16,'Amapá');
 Insert Into public.estado (id,nome) Values(29,'Bahia');
 Insert Into public.estado (id,nome) Values(23,'Ceará');
 Insert Into public.estado (id,nome) Values(53,'Distrito Federal');
 Insert Into public.estado (id,nome) Values(32,'Espírito Santo');
 Insert Into public.estado (id,nome) Values(52,'Goiás');
 Insert Into public.estado (id,nome) Values(21,'Maranhão');
 Insert Into public.estado (id,nome) Values(31,'Minas Gerais');
 Insert Into public.estado (id,nome) Values(50,'Mato Grosso do Sul');
 Insert Into public.estado (id,nome) Values(51,'Mato Grosso');
 Insert Into public.estado (id,nome) Values(15,'Pará');
 Insert Into public.estado (id,nome) Values(25,'Paraíba');
 Insert Into public.estado (id,nome) Values(26,'Pernambuco');
 Insert Into public.estado (id,nome) Values(22,'Piauí');
 Insert Into public.estado (id,nome) Values(41,'Paraná');
 Insert Into public.estado (id,nome) Values(33,'Rio de Janeiro');
 Insert Into public.estado (id,nome) Values(24,'Rio Grande do Norte');
 Insert Into public.estado (id,nome) Values(11,'Rondônia');
 Insert Into public.estado (id,nome) Values(14,'Roraima');
 Insert Into public.estado (id,nome) Values(43,'Rio Grande do Sul');
 Insert Into public.estado (id,nome) Values(42,'Santa Catarina');
 Insert Into public.estado (id,nome) Values(28,'Sergipe');
 Insert Into public.estado (id,nome) Values(35,'São Paulo');
 Insert Into public.estado (id,nome) Values(17,'Tocantins');

/*------------Tipos de Arbitros-------------- */
INSERT INTO public.tipoarbitro(id, tipo)
	VALUES ('PRINCIPAL');
    
INSERT INTO public.tipoarbitro(
	id, tipo)
	VALUES ('AUXILIAR');

INSERT INTO public.tipoarbitro(
	id, tipo)
	VALUES ('QUARTO ARBITRO');
    
/*------------Arbitros-------------- */
    
INSERT INTO public.arbitro(
    nome, data_nascimento, estado_id, tipo_arbitro_d)
	VALUES ('Marcelo de Lima Henrique', '1971-08-26 ', 33, 1);
    
INSERT INTO public.arbitro(
    nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Ana Paula da Silva Oliveira', '1978-05-26', 33, 1);

INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Belmiro da Silva', '1966-10-26', 29, 1);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Daniel Victor Costa Silva', '1991-03-08', 33, 1);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Eduardo Fernandes Teixeira', '1987-07-16', 24, 1);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Carlos Donizeti Pianosqui', '1958-10-04', 35, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Cleidy Mary dos Santos Nunes Ribeiro', '1970-03-16', 42, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Joelson Almires Rocha', '1965-01-12', 16, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Lucas Gomes Da Silva', '1987-05-20', 14, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Alfredo Neto Abreu', '1980-02-01', 42, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Renato Costa Suarez', '1979-06-29', 17, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Luiza Antunes Romeu', '1992-01-19', 26, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Paulina Fernandes Braga', '1980-07-25', 28, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Victor Ferreira Viana', '1979-04-17', 51, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Breno Denner Gomes', '1986-09-10', 16, 2);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Marcos Marquinhos Marcão', '1988-11-14', 15, 3);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Valdivia Pereira Santos', '1975-10-22', 23, 3);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Alana Lunes Samir', '1990-09-22', 41, 3);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Estevam Figueiredo', '1987-03-12', 50, 3);
    
INSERT INTO public.arbitro(
	nome, data_nascimento, estado_id, tipo_arbitro_id)
	VALUES ('Claudia Santos da Silva', '1991-08-16', 24, 3);


/*----------- Posicoes ------------*/

INSERT INTO public.posicao(
	nome)
	VALUES ('ATA');

INSERT INTO public.posicao(
	nome)
	VALUES ('MEI');

INSERT INTO public.posicao(
	nome)
	VALUES ('DEF');

INSERT INTO public.posicao(
	nome)
	VALUES ('GOL');


/*------------ Punições ------------*/

INSERT INTO public.punicao(
	tipo)
	VALUES ('amarelo');

INSERT INTO public.punicao(
	tipo)
	VALUES ('vermelho');

    
/*------------ Tipos de Jogadas ------------*/

INSERT INTO public.tipojogada(
	tipo)
	VALUES ('Escanteio');

INSERT INTO public.tipojogada(
	tipo)
	VALUES ('Falta');

INSERT INTO public.tipojogada(
	tipo)
	VALUES ('Impedimento');

INSERT INTO public.tipojogada(
	tipo)
	VALUES ('Finalização');
    
INSERT INTO public.tipojogada(
	tipo)
	VALUES ('Cartão por Reclamação');

/*----------- Treinador ----------*/

INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Luis Felipe Escolari', '1948-10-10', 43);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Alberto Valentim', '1980-09-10', 35);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Dorival Jr','1950-04-22', 29);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Lisca Doido', '1967-03-19', 23);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Zé Ricardo', '1956-05-15', 33);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Marcelo Oliveira', '1947-09-16', 31);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Jair Ventura', '1976-02-27', 33);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Jorginho', '1981-09-24', 50);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Tite', '1964-07-12', 17);
    
INSERT INTO public.treinador(
	nome, nascimento, estado_id)
	VALUES ('Petkovic', '1930-12-01', 22);

/*-------- Times ----------*/

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Vasco', 33);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Flamengo', 33);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Fluminense', 33);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Botafogo', 33);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Bangu', 33);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('São Paulo', 35);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Corinthians', 35);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Palmeiras', 35);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Santos', 35);

INSERT INTO public.equipe(
	nome, estado_id)
	VALUES ('Ponte Preta', 33);

/*-------------- Organizadores --------------*/

INSERT INTO public.organizador(
	estado_id, nome)
	VALUES (33 , 'FERJ');
    
INSERT INTO public.organizador(
	estado_id, nome)
	VALUES (35 , 'FPF');
    
INSERT INTO public.organizador(
	estado_id, nome)
	VALUES (53, 'CBF');

/*----------------Temporada------------------*/

INSERT INTO public.temporada(
	ano)
	VALUES (2018);

/*---------------Campeonatos----------------*/

INSERT INTO public.campeonato(
	organizador_id, nome, temporada_id)
	VALUES (1, 'Campeonato Carioca', 1);

INSERT INTO public.campeonato(
	organizador_id, nome, temporada_id)
	VALUES (2, 'Campeonato Paulista', 1);

INSERT INTO public.campeonato(
	organizador_id, nome, temporada_id)
	VALUES (3, 'Campeonato Brasileiro', 1);

/*------------- Jogadores -------------- */

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Yago Pikachu', '1992-09-07', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Diego Ribas', '1989-10-17', 2);
                
INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Thiago Galhardo', '1990-04-17', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Everton Ribeiro', '1988-08-15', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);


INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Patrick', '1991-10-08', 2);






/*10*/