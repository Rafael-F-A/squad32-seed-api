CREATE TABLE IF NOT EXISTS respostas (
    id SERIAL PRIMARY KEY,
    tentativa_id INTEGER NOT NULL REFERENCES tentativas(id) ON DELETE CASCADE,
    questao_id INTEGER NOT NULL REFERENCES questoes(id) ON DELETE CASCADE,
    alternativa_id INTEGER REFERENCES alternativas(id) ON DELETE SET NULL,
    is_correta BOOLEAN,
    data_resposta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (tentativa_id, questao_id)
);

CREATE INDEX idx_respostas_tentativa_id ON respostas(tentativa_id);
CREATE INDEX idx_respostas_questao_id ON respostas(questao_id);