CREATE OR REPLACE FUNCTION atualiza_placar()
  RETURNS trigger AS
$BODY$
declare
 e_id bigint;
 e1 bigint;
 e2 bigint;
BEGIN
 select id into e_id from Equipe where id in (select equipe_id from Jogador where id = NEW.jogador_id) limit(1);
 select mandante_id into e1 from Jogo where Jogo.id = NEW.jogo_id;
 select visitante_id into e2 from Jogo where Jogo.id = NEW.jogo_id;
 
 if e_id = e1 then
   update Jogo set mandante_placar = (mandante_placar + 1) where id = NEW.jogo_id;
 else
 	update Jogo set visitante_placar = (visitante_placar + 1) where id = NEW.jogo_id;
 end if;
 RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql

CREATE TRIGGER atualizacao_placar
  after insert
  ON Gol
  FOR EACH ROW
  EXECUTE PROCEDURE atualiza_placar();

CREATE OR REPLACE FUNCTION suspender_jogador_cartao_vermelho()
  RETURNS trigger AS
$BODY$
declare
 tipo_punicao varchar(255);
 id_campeonato bigint;
BEGIN
 select tipo into tipo_punicao 
   from Punicao 
   where id in (select id from punicao where id = NEW.punicao_id) limit(1);
 
 select campeonato_id into id_campeonato 
   from Rodada where id in (select rodada_id from Jogo where id = NEW.jogo_id) limit(1);
 
 if tipo_punicao = 'vermelho' then
   update JogoCampeonato set suspenso = true, vermelhos = (vermelhos + 1) where jogador_id = NEW.executor_id and Campeonato.id = id_campeonato;
 end if;
 RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER atualizacao_suspensao_vermelho
  after insert
  ON Jogada
  FOR EACH ROW
  EXECUTE PROCEDURE suspender_jogador_cartao_vermelho();

CREATE OR REPLACE FUNCTION suspender_jogador_cartao_amarelo()
  RETURNS trigger AS
$BODY$
declare
 tipo_punicao varchar(255);
 id_campeonato bigint;
 qtd_amarelos integer;
BEGIN
 select tipo into tipo_punicao 
   from Punicao 
   where id in (select id from punicao where id = NEW.punicao_id) limit(1);
 
 select campeonato_id into id_campeonato 
   from Rodada where id in (select rodada_id from Jogo where id = NEW.jogo_id) limit(1);
 
 if tipo_punicao = 'amarelo' then
   update JogoCampeonato set amarelos = (amarelos + 1) where jogador_id = NEW.executor_id and Campeonato.id = id_campeonato;
   select count(amarelos) into qtd_amarelos from JogadorCampeonato where jogador_id = NEW.executor_id and Campeonato.id = id_campeonato;
   if qtd_amarelos % 3 == 0 then
     update JogoCampeonato set suspenso = true where jogador_id = NEW.executor_id and Campeonato.id = id_campeonato;
   end if;
 end if;
 RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER atualizacao_suspensao_amarelo
  after insert
  ON Jogada
  FOR EACH ROW
  EXECUTE PROCEDURE suspender_jogador_cartao_amarelo();