# TodoList

Aplicação web para gerenciamento de tarefas, construída em **Ruby on Rails 8**, com autenticação de usuários e CRUD para listas/tarefas.

## Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Como rodar o projeto

### 1. Clone o repositório

```bash
git clone https://github.com/iancostag/todolist-RoR.git
cd todolist-RoR
```

2. Suba os containers

```
docker compose up -d
```
O Docker Compose irá construir a imagem automaticamente, caso necessário.

O script entrypoint.sh aguarda o banco de dados, cria e migra o banco antes de iniciar o servidor Rails.

O app estará disponível em: http://localhost:3000

Rodando testes

    docker compose exec web bin/rails test

Acessando o Rails Console

    docker compose exec web bin/rails console

Acessando o banco de dados (psql)
    
    docker compose exec db psql -U postgres -d todolist_development

Estrutura do Projeto

    app/models: modelos do Rails

    app/controllers: controllers

    app/views: views do sistema

    db/migrate: migrations do banco

    db/seeds.rb: dados de exemplo

Funcionalidades atuais

    Cadastro e login de usuário (password_digest)

    Cada usuário gerencia suas próprias listas e tarefas

    CRUD para Listas e Tarefas

Observações

O banco de dados será criado e migrado automaticamente ao subir a aplicação.

Se precisar resetar o banco:

    docker compose exec web bin/rails db:reset

Se o banco travar por sessão aberta:

    docker compose down -v && docker compose up -d

TODO

    Migrar autenticação para Devise

    Adicionar confirmação de e-mail

    Melhorias no layout
