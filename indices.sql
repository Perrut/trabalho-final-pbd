CREATE INDEX gol_artilheiro_idx ON Gol (artilheiro_id);

CREATE INDEX jogada_executor_idx ON Jogada (executor_id);

CREATE INDEX jogada_punicao_idx ON Jogada (punicao_id);

CREATE INDEX jogada_momento_idx ON Jogada (momento_id);

CREATE INDEX jogador_posicao_idx ON Jogador (posicao_id);

CREATE INDEX equipe_estado_idx ON Equipe (estado_id);

CREATE INDEX treinador_temporada_equipe_idx ON TreinadorTemporadaEquipe (treinador_id, temporada_id, equipe_id);

CREATE INDEX jogada_jogo_idx ON Jogada (jogo_id);

CREATE INDEX jogo_rodada_idx ON Jogo (rodada_id);

CREATE INDEX jogador_temporada_equipe_idx ON JogadorTemporadaEquipe (jogador_id, temporada_id, equipe_id);

CREATE INDEX estadio_estado_idx ON Estadio (estado_id);

CREATE INDEX jogada_tipo_jogada_idx ON Jogada (tipo_jogada_id);

CREATE INDEX treinador_estado_idx ON Treinador (estado_id);
