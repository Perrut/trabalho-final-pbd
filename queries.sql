--(01) jogadores com mais de 22 anos
select count(*) from Jogador where date_part('year', data_nascimento) > (date_part('year', CURRENT_DATE) - 22);
--(02) Arbitro mais velho
select id, nome from Arbitro order by data_nascimento desc limit(1);
--(03) jogador mais novo
select id, nome from Jogador order by data_nascimento asc limit(1);
--(04) idade de todos os jogadores
select (date_part('year', CURRENT_DATE) - date_part('year', data_nascimento)) as idade from Jogador;
--(05) media de idade dos jogadores
select avg(idade) from (select (date_part('year', CURRENT_DATE) - date_part('year', data_nascimento)) as idade from Jogador) as idades;
--(06) jogadores que levaram amarelo
select J.nome, J.id 
  from 
	Jogador as J inner join Jogada as JOG on J.id = JOG.executor_id
	             inner join Punicao as P on P.id = JOG.punicao_id
  where P.tipo = 'amarelo';
--(07) quantos gols cada jogador já fez na história do BD
select J.nome, J.id, count(G.artilheiro_id) as gols
	from Jogador as J inner join Gol as G
	  on J.id = G.artilheiro_id group by J.id;
--(08) maximo de gols que um jogador já fez na história
select max(gols) as qtd from (select J.nome, J.id, count(G.artilheiro_id) as gols
	from Jogador as J inner join Gol as G
	  on J.id = G.artilheiro_id group by J.id) as query_qtd;
--(09) momento do jogo onde ocorrem mais jogadas
select momento_id, count(momento_id) as cont from jogada
   group by momento_id
   order by cont desc limit(1);
--(10) quantos jogadores são atacantes
select count(*) as atacantes from Jogador where posicao_id in (select id from Posicao where nome = 'ATA');
--(11) quantos times são do estado de São Paulo
select count(*) from Equipe where estado_id in (select id from Estado where nome = 'São Paulo');
--(12) equipes que tiveram mais que um treinador numa temporada
select nome, count(treinador_id) from TreinadorTemporadaEquipe
	inner join Equipe on TreinadorTemporadaEquipe.equipe_id = Equipe.id
	group by nome having count(treinador_id) > 1;
--(13) jogadores que nunca receberam um cartão amarelo na história do BD
select J.nome, J.id from
	Jogador as J inner join Jogada as JOG on J.id = JOG.executor_id
	             inner join Jogo as PTD on JOG.jogo_id = PTD.id
	where J.id not in (select executor_id from Jogada where punicao_id in (select id from Punicao where tipo = 'amarelo'));
--(14) zagueiros que levaram cartão amarelo
select J.nome, J.id from
	Jogador as J inner join Jogada as JOG on J.id = JOG.executor_id
	             inner join Jogo as PTD on JOG.jogo_id = PTD.id
	where J.id in (select executor_id from Jogada where punicao_id in (select id from Punicao where tipo = 'amarelo'))
	and J.posicao_id in (select id from Posicao where nome = 'DEF');
--(15) rodada do campeonato com id 1 que teve mais gols
select count(Gol.id), R.numero as rodada from
	Gol inner join Jogo as J on Gol.jogo_id = J.id
	    inner join Rodada as R on J.rodada_id = R.id
	where R.campeonato_id = 1
	group by rodada
	order by count(Gol.id) desc
	limit(1);
--(16) equipe com mais jogadores na temporada de 2018
select E.nome, count(JTE.jogador_id) from
	Equipe as E inner join JogadorTemporadaEquipe as JTE
	  on E.id = JTE.equipe_id 
	and JTE.temporada_id in (select id from temporada where ano = 2018)
	group by E.nome
	order by count(JTE.jogador_id) desc
	limit(1);
--(17) estádios do Rio de Janeiro
select E.nome from 
	Estadio as E inner join Estado as EST on E.estado_id = EST.id
	where EST.nome = 'Rio de Janeiro';
--(18) estádios com capacidade maior que 18mil
select E.nome, EST.nome as Estado from
	Estadio as E inner join Estadio as EST on E.estado_id = EST.id
	where E.capacidade > 18000;
--(19) jogada que mais ocorreu na história do BD
select TJ.tipo, count(J.tipo_jogada_id) from 
	TipoJogada as TJ inner join Jogada as J on TJ.id = J.tipo_jogada_id
	group by TJ.tipo
	order by count(J.tipo_jogada_id) desc
	limit(1);
--(20) treinadores de Mato Grosso
select * from Treinador inner join Estado on Treinador.estado = Estado.id
	where Estado.nome = 'Mato Grosso';
	