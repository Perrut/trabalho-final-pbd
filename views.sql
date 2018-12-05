create or replace view view_rodadas as
select J.mandante_id, J.visitante_id, R.numero, R.campeonato_id from 
    Equipe as E inner join Jogo as J on E.id = J.mandante_id
	            inner join Rodada as R on J.rodada_id = R.id
order by R.id;

create or replace view view_elenco as
select J.nome, E.nome as equipe, T.ano as temporada from
    Jogador as J inner join JogadorTemporadaEquipe as JTE on J.id = JTE.jogador_id
                 inner join Equipe as E on JTE.equipe_id = E.id
                 inner join Temporada as T on JTE.temporada_id = T.id
where JTE.saida is null and T.ano = date_part('year', CURRENT_DATE)
order by E.nome asc;

create or replace view classificacao_nos_campeonatos as
select E.nome, ECT.pontos, T.ano from
    Equipe as E inner join EquipeCampeonatoTemporada as ECT on E.id = ECT.equipe_id
                inner join Campeonato as C on C.id = ECT.campeonato_id
                inner join Temporada as T on T.id = ECT.temporada_id
where T.ano = date_part('year', CURRENT_DATE)
order by E.nome desc;