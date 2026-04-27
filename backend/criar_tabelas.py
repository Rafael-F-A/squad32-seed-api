import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="squad32_seed",
    user="postgres",
    password="0522"
)

cur = conn.cursor()

# Tabela usuarios
cur.execute("""
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    perfil VARCHAR(50) NOT NULL,
    nivel VARCHAR(50),
    serie VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
""")

print("✅ Tabela 'usuarios' criada/verificada")

# Tabela provas
cur.execute("""
CREATE TABLE IF NOT EXISTS provas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT,
    nivel VARCHAR(50) NOT NULL,
    serie VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    status VARCHAR(50) DEFAULT 'RASCUNHO',
    nota_minima FLOAT DEFAULT 6.0,
    tempo_limite INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
""")

print("✅ Tabela 'provas' criada/verificada")

# Tabela questoes
cur.execute("""
CREATE TABLE IF NOT EXISTS questoes (
    id SERIAL PRIMARY KEY,
    enunciado TEXT NOT NULL,
    prova_id INTEGER REFERENCES provas(id),
    nivel_dificuldade VARCHAR(50) DEFAULT 'MEDIO'
);
""")

print("✅ Tabela 'questoes' criada/verificada")

conn.commit()
cur.close()
conn.close()

print("🎉 Todas as tabelas foram criadas com sucesso!")