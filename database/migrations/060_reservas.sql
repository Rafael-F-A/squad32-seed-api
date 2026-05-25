CREATE TABLE IF NOT EXISTS reservas (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    local_id INTEGER NOT NULL REFERENCES locais(id) ON DELETE CASCADE,
    prova_id INTEGER NOT NULL REFERENCES provas(id) ON DELETE CASCADE,
    data_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_expiracao TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ATIVA' CHECK (status IN ('ATIVA', 'CANCELADA', 'EXPIRADA', 'CONFIRMADA')),
    necessidades_especiais TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (aluno_id, prova_id)
);

CREATE INDEX idx_reservas_aluno_id ON reservas(aluno_id);
CREATE INDEX idx_reservas_prova_id ON reservas(prova_id);
CREATE INDEX idx_reservas_status ON reservas(status);