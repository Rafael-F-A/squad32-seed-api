CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS locais (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco TEXT NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(20) NOT NULL,
    contato VARCHAR(255),
    capacidade INTEGER NOT NULL CHECK (capacidade > 0),
    vagas_restantes INTEGER NOT NULL CHECK (vagas_restantes >= 0),
    geolocalizacao GEOMETRY(Point, 4326),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_locais_geolocalizacao ON locais USING GIST (geolocalizacao);
CREATE INDEX idx_locais_cidade_estado ON locais (cidade, estado);