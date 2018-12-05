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
/*---------------- MEI ------------------*/

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
	VALUES ('Bruno Henrique', '1988-11-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Dudu', '1991-12-12', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Nenê', '1986-11-02', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Lenandro Bonfim', '1987-05-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Andrade', '1990-06-11', 2);

				/*10*/

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Andrey', '1994-04-14', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Cuellar', '1992-11-13', 2);
                
INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Willian Maranhão', '1990-02-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Douglas', '1986-08-19', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Luan', '1994-07-06', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Lucas Paquetá', '1995-01-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Michel', '1989-12-12', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Clayton', '1996-11-02', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Bruno Veras', '1996-01-29', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Matheus Perut', '1994-02-23', 2);

	
			/*10*/

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Nicão', '1992-09-10', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Bruno Hitter', '1997-05-08', 2);
                
INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Sanches', '1993-04-07', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Lucas Silva', '1988-08-15', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Renato Abreu', '1989-11-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Ibson', '1988-11-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Abedi', '1991-12-12', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Philippe Coutinho', '1995-11-02', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Morais', '1989-05-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Perdigão', '1982-06-11', 2);

				/*10*/

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Paulo Henrique Ganso', '1992-09-10', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Kaka', '1997-05-08', 2);
                
INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Zé Roberto', '1993-04-07', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Ronaldinho Gaucho', '1988-08-15', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Edmilson', '1989-11-08', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Emerson', '1988-11-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Casemiro', '1991-12-12', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Arthur', '1996-11-02', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Allan', '1989-05-18', 2);

INSERT INTO public.jogador(
	nome, data_nascimento, posicao_id)
	VALUES ('Souza', '1982-06-11', 2);

/*------------------- DEF -------------------*/

	INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Guga', '1992', 3);
    
    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Pedro Geromel', '1992-11-11', 3); 

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Vitor Cuesta', '1989-09-22', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Kanneman', '1989-10-14', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rodrigo Moledo', '1992-11-09', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Leo Duarte', '1998-01-24', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Gum', '1989-07-04', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Kanneman', '1989-10-14', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Leandro Eusebio', '1987-02-24', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Gustavo Geladeira', '1992-08-12', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Paulao', '1990-10-29', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Chicao', '1986-11-01', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Luiz Gustavo', '1996-05-11', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Matheus Ferraz', '1990-04-18', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Ronaldo Angelim', '1987-12-24', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rodrigo Caio', '1996-02-21', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Carli', '1991-12-11', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Miranda', '1987-01-14', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Dante', '1988-09-05', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Breno', '1990-12-10', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Celove', '1991-11-10', 3);
    /*20*/
    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Leo Moura', '1987-01-15', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Juan', '1988-03-11', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Leo Pele', '1990-12-21', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Sander', '1992-03-01', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Jorge', '1999-06-13', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rene', '1990-11-29', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Trauco', '1993-08-07', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rodinei', '1989-12-17', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Para', '1989-04-10', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Mariano', '1991-01-30', 3);
    /*30*/
    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Ruy', '1987-12-04', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Bruno Cortez', '1990-06-16', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Marcelo', '1989-10-21', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Henrique', '1990-09-09', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rafael Galhardo', '1992-12-14', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Iago', '1994-08-18', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Mayke', '1990-07-19', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Fagner', '1988-07-22', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Felipe Luis', '1988-06-14', 3);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Alex Sandro', '1992-08-12', 3);

/*---------------- GOL ------------------*/

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Marcelo Lomba', '1988-03-01', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Martin Silva', '1986-12-11', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Diego Alves', '1985-10-03', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Cesar', '1998-10-03', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Julio Cesar', '1990-11-06', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Victor', '1988-10-23', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Fernando Prass', '1986-02-13', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Cassio', '1988-06-30', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Muralha', '1990-10-08', 4);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Cesar', '1998-10-03', 4);


/*-------------- ATA ---------------*/

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Pablo', '1994-02-24', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Gabigol', '1995-11-24', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Uribe', '1990-09-22', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Edmundo', '1987-12-29', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Nico Lopez', '1989-07-09', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Nilmar', '1989-11-18', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Fellype Gabriel', '1990-07-05', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Malcom', '1990-04-23', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Lincoln', '1999-03-12', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Helinho', '2001-03-11', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Pedro', '1999-11-27', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Marcos Junior', '1995-03-01', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Paulinho', '2000-09-22', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Joel', '1990-06-12', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Luan', '1998-08-06', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Damiao', '1993-11-29', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Romero', '1990-12-03', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Fred', '1987-03-04', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'Rafael Sobis', '1988-10-24', 1);

    INSERT INTO public.jogador(
nome, data_nascimento, posicao_id)
VALUES ( 'William Bigode', '1989-03-09', 1);


/*---------------TreinadorXEquipe------------*/

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (1, 1, 1, '2018-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (2, 2, 1, '2017-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (3, 3, 1, '2016-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (4, 4, 1, '2018-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (5, 5, 1, '2018-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (6, 6, 1, '2017-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (7, 7, 1, '2017-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (8, 8, 1, '2018-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (9, 9, 1, '2018-01-01');

INSERT INTO public.treinadortemporadaequipe(
	equipe_id, treinador_id, temporada_id, entrada, saida)
	VALUES (10, 10, 1, '2015-01-01');