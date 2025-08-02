# TodoList

Aplicação web para gerenciamento de tarefas, construída em **Ruby on Rails 8**, com autenticação de usuários e CRUD para listas/tarefas.

## Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Como rodar o projeto e Testar

### 1. Clone o repositório

```bash
git clone https://github.com/iancostag/todolist-RoR.git
cd todolist-RoR
```

## 2. Suba os containers

```
docker compose up -d
```
O Docker Compose irá construir a imagem automaticamente, caso necessário.

O script entrypoint.sh aguarda o banco de dados, cria e migra o banco antes de iniciar o servidor Rails.

O app estará disponível em: http://localhost:3000

## 3. Criando seu próprio usuário - Ambiente de dockerizado

```
se rodou docker compose up já rode:
docker compose down
docker compose up
```
Clique em "Cadastrar"
<img width="1920" height="882" alt="image" src="https://github.com/user-attachments/assets/49663488-5f66-43cf-91fb-2734264210a1" />
Preencha os campos.
<img width="1920" height="882" alt="image" src="https://github.com/user-attachments/assets/f601be50-4060-4e08-bc07-650d0e140d61" />
Após enviar, você será rediorecionado para essa página.
<img width="1920" height="882" alt="image" src="https://github.com/user-attachments/assets/d20485da-13a6-48ea-b29b-0f1f20127018" />
No terminal em que rodou docker compose up (sem a flag -d) procure pelo link de confirmação, que irá aparecer nesse formato:
<img width="1920" height="65" alt="image" src="https://github.com/user-attachments/assets/48b59958-b04a-4ef3-9109-2fe0dd0bcac4" />
Agora basta logar com sua conta

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
