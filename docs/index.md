<h2><strong>Todolist Product Backlog – (User Stories)</strong></h2>

<hr>

<h3><strong>Backlog Geral</strong></h3>

<p>
  Meu backlog está oganizado no <em>Github Projects</em>, onde especifico <strong>critérios de aceitação</strong>,além de utilizar tags para:
</p>
<ul>
  <li>Identificar a priorização das User Stories (US).</li>
  <li>Identificar a qual funcionalidade ou agrupamento cada US pertence.</li>
  <li>Classificar o nível de granularidade: Tema, Épico ou User Story.</li>
</ul>

<p>
  Essa estrutura organiza e facilita a gestão do backlog, garantindo clareza no desenvolvimento e alinhamento com os objetivos do projeto.
</p>
[Acesse o Projects Clicando aqui](https://github.com/users/iancostag/projects/1)
<hr>

<h4><strong> Objetivo Específico: Gerenciar tarefas pessoais de forma simples e organizada</strong></h4>

<h4><strong>Tema 1:</strong> Autenticação e Conta de Usuário</h4>
<h5><strong>Épico 1.1:</strong> Login e Recuperação de Acesso</h5>

<table border="1">
  <thead style="background-color: var(--md-primary-fg-color); color: white;">
    <tr>
      <th><strong>Código</strong></th>
      <th><strong>Prioridade</strong></th>
      <th><strong>User Story</strong></th>
      <th><strong>Critérios de Aceitação</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US 1.1.1</td>
      <td>MUST</td>
      <td>Como usuário, quero logar na aplicação para ter controle das minhas todolists.</td>
      <td>
        - Tela de login com campos obrigatórios.<br>
        - Após autenticação, redirecionar para dashboard do usuário.<br>
        - Mensagem clara de erro em caso de falha.
      </td>
    </tr>
    <tr>
      <td>US 1.1.2</td>
      <td>SHOULD</td>
      <td>Como usuário, quero trocar minha senha pois esqueci.</td>
      <td>
        - Link “Esqueci minha senha” disponível na tela de login.<br>
        - Sistema envia e-mail de recuperação com link.<br>
        - Nova senha deve ser validada e persistida.
      </td>
    </tr>
  </tbody>
</table>

<br>

<h4><strong>Tema 2:</strong> Gerenciamento de Tarefas</h4>
<h5><strong>Épico 2.1:</strong> CRUD de Tarefas</h5>

<table border="1">
  <thead style="background-color: var(--md-primary-fg-color); color: white;">
    <tr>
      <th><strong>Código</strong></th>
      <th><strong>Prioridade</strong></th>
      <th><strong>User Story</strong></th>
      <th><strong>Critérios de Aceitação</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US 2.1.1</td>
      <td>MUST</td>
      <td>Como usuário, quero cadastrar uma tarefa para me organizar.</td>
      <td>
        - Formulário com título, descrição e data.<br>
        - Tarefa deve ser salva corretamente no banco.<br>
        - Mensagem de sucesso exibida após criação.
      </td>
    </tr>
    <tr>
      <td>US 2.1.2</td>
      <td>MUST</td>
      <td>Como usuário, quero deletar uma tarefa pois ela não faz mais sentido para mim.</td>
      <td>
        - Opção de “Excluir” visível.<br>
        - Confirmação antes da exclusão.<br>
        - Tarefa removida do sistema.
      </td>
    </tr>
    <tr>
      <td>US 2.1.3</td>
      <td>MUST</td>
      <td>Como usuário, quero editar uma tarefa, pois quero reagendá-la ou trocar seu nome.</td>
      <td>
        - Permitir edição de nome, descrição e data.<br>
        - Alterações devem ser persistidas.<br>
        - Mensagem de sucesso ao salvar.
      </td>
    </tr>
    <tr>
      <td>US 2.1.4</td>
      <td>MUST</td>
      <td>Como usuário, quero marcar uma tarefa como concluída, para saber o que já concluí.</td>
      <td>
        - Checkbox ou botão para marcar como “Concluída”.<br>
        - Estado da tarefa deve mudar visualmente.<br>
        - Persistência no banco de dados.
      </td>
    </tr>
    <tr>
      <td>US 2.1.5</td>
      <td>MUST</td>
      <td>Como usuário, quero visualizar as tarefas de hoje, para realizá-las.</td>
      <td>
        - Página ou filtro “Hoje”.<br>
        - Exibe apenas tarefas da data atual.<br>
        - Ordenadas por horário ou prioridade.
      </td>
    </tr>
  </tbody>
</table>

<br>

<h4><strong>Tema 3:</strong> Organização por Listas</h4>
<h5><strong>Épico 3.1:</strong> CRUD de ToDoLists</h5>

<table border="1">
  <thead style="background-color: var(--md-primary-fg-color); color: white;">
    <tr>
      <th><strong>Código</strong></th>
      <th><strong>Prioridade</strong></th>
      <th><strong>User Story</strong></th>
      <th><strong>Critérios de Aceitação</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US 3.1.1</td>
      <td>MUST</td>
      <td>Como usuário, quero cadastrar várias todolists, para melhor organizar minhas tarefas.</td>
      <td>
        - Campo para nome da lista.<br>
        - Cada lista pode conter várias tarefas.<br>
        - Salvar lista no banco.
      </td>
    </tr>
    <tr>
      <td>US 3.1.2</td>
      <td>MUST</td>
      <td>Como usuário, quero excluir uma todolist, pois ela e suas tarefas não me interessam mais.</td>
      <td>
        - Botão de exclusão visível.<br>
        - Confirmação obrigatória.<br>
        - Todas as tarefas associadas também devem ser removidas.
      </td>
    </tr>
    <tr>
      <td>US 3.1.3</td>
      <td>MUST</td>
      <td>Como usuário, quero editar uma todolist, para corrigir algum dado.</td>
      <td>
        - Permitir alteração do nome.<br>
        - Persistir mudanças.<br>
        - Exibir feedback visual.
      </td>
    </tr>
    <tr>
      <td>US 3.1.4</td>
      <td>MUST</td>
      <td>Como usuário, quero visualizar todas as minhas todolists, para me organizar melhor.</td>
      <td>
        - Exibir listagem completa das listas criadas.<br>
        - Cada item pode ser clicado para exibir suas tarefas.<br>
        - Mensagem de "nenhuma lista encontrada" se estiver vazio.
      </td>
    </tr>
  </tbody>
</table>
