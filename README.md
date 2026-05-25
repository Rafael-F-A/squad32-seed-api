# Squad 32 – Sistema de Gestão de Provas SEED

API para gerenciamento de provas, questões, simulados e certificações.  
Projeto desenvolvido durante uma residência em software.

---

## 📌 Repositório

https://github.com/Rafael-F-A/squad32-seed-api

---

## 🚀 Tecnologias Utilizadas

### 🔧 Back-end
- Python
- FastAPI
- SQLAlchemy
- JWT Authentication

### 🗄️ Banco de Dados
- PostgreSQL
- PostGIS
- Supabase (Banco de dados em nuvem)

### 🎨 Front-end
- HTML
- CSS
- JavaScript puro

### 📦 Migrações
- Scripts SQL numerados
- Não utiliza Alembic

---

## 🛢️ Estrutura do Banco de Dados

O sistema possui as seguintes tabelas:

- `usuarios`
- `provas`
- `questoes`
- `alternativas`
- `locais`
- `reservas`
- `tentativas`
- `respostas`

### 🌍 Recursos Geoespaciais

A tabela `locais` utiliza a extensão **PostGIS** para armazenamento de dados de geolocalização.

---

## 📂 Estrutura do Projeto

```bash
squad32-seed-api/
│
├── backend/
│   ├── app/
│   ├── requirements.txt
│   └── .env
│
├── frontend/
│
├── database/
│   └── migrations/
│
└── README.md
```

---

## ⚙️ Configuração do Ambiente

### 1️⃣ Clonar o repositório

```bash
git clone https://github.com/Rafael-F-A/squad32-seed-api.git
```

---

### 2️⃣ Entrar na pasta do back-end

```bash
cd squad32-seed-api/backend
```

---

### 3️⃣ Criar ambiente virtual

#### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

#### Linux / MacOS

```bash
python -m venv venv
source venv/bin/activate
```

---

### 4️⃣ Instalar dependências

```bash
pip install -r requirements.txt
```

---

### 5️⃣ Configurar arquivo `.env`

Cada membro da equipe deve criar seu próprio arquivo `.env` dentro da pasta `backend/`.

A string de conexão do banco será compartilhada pelo líder do projeto através de canal seguro.

```env
DATABASE_URL=postgresql://... (string fornecida pelo líder)
SECRET_KEY=37592
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=1440
```

---

## ▶️ Executando o Projeto

### Iniciar servidor FastAPI

```bash
uvicorn app.main:app --reload
```

A aplicação estará disponível em:

```bash
http://localhost:8000
```

---

## 📚 Documentação da API

Após iniciar o servidor, a documentação automática poderá ser acessada em:

### Swagger UI

```bash
http://localhost:8000/docs
```

### ReDoc

```bash
http://localhost:8000/redoc
```

---

## 📌 Banco de Dados em Nuvem

O projeto utiliza o **Supabase** como provedor do banco PostgreSQL em nuvem, permitindo:

- Acesso remoto ao banco
- Escalabilidade
- Persistência de dados
- Integração com PostgreSQL/PostGIS

---

## ⚠️ Problemas Comuns

| Problema | Solução |
|---|---|
| `ModuleNotFoundError` | Ative o ambiente virtual |
| `password authentication failed` | Verifique a `DATABASE_URL` |
| `connection refused` | Verifique se a conexão com o Supabase está correta |
| `uvicorn not found` | Instale as dependências do projeto |

---

## 👨‍💻 Equipe

Projeto desenvolvido pela equipe **Squad 32** durante a Residência em Software.

---

## 📄 Licença

Projeto desenvolvido para fins acadêmicos e educacionais.