<h2>Lista de Requisitos</h2>
<p>A seguir, apresenta-se a lista detalhada dos requisitos do projeto, dividida entre requisitos funcionais e não funcionais. Essa lista serve como referência para orientar o desenvolvimento, garantir o atendimento das necessidades dos usuários e assegurar a qualidade do sistema.</p>

<h3>Tabela de Requisitos Funcionais</h3>

  <table border="1">
      <thead>
        <tr>
          <th><strong>Objetivo Específico</strong></th>
          <th><strong>Código</strong></th>
          <th><strong>Requisito</strong></th>
          <th><strong>Descrição</strong></th>
        </tr>
      </thead>
      <tbody>
        <!-- Autenticação e Conta de Usuário -->
        <tr>
          <td rowspan="2">Autenticação e Conta de Usuário</td>
          <td>RF1.1</td>
          <td>Cadastrar e autenticar usuário</td>
          <td>Permitir que um novo usuário se cadastre no sistema com e-mail e senha e, posteriormente, realize login para acessar suas listas de tarefas.</td>
        </tr>
        <tr>
          <td>RF1.2</td>
          <td>Recuperar senha</td>
          <td>Permitir que o usuário redefina sua senha caso a tenha esquecido, através de um link enviado por e-mail.</td>
        </tr>
        <!-- Gerenciamento de Tarefas -->
        <tr>
          <td rowspan="5">Gerenciamento de Tarefas</td>
          <td>RF2.1</td>
          <td>Cadastrar nova tarefa</td>
          <td>Permitir o cadastro de uma nova tarefa com título, descrição e data.</td>
        </tr>
        <tr>
          <td>RF2.2</td>
          <td>Editar tarefa existente</td>
          <td>Permitir a edição dos dados de uma tarefa já cadastrada, como nome, descrição e data.</td>
        </tr>
        <tr>
          <td>RF2.3</td>
          <td>Excluir tarefa</td>
          <td>Permitir a exclusão de uma tarefa, mediante confirmação do usuário.</td>
        </tr>
        <tr>
          <td>RF2.4</td>
          <td>Marcar tarefa como concluída</td>
          <td>Permitir que o usuário altere o estado de uma tarefa para "concluída", com uma clara distinção visual.</td>
        </tr>
        <tr>
          <td>RF2.5</td>
          <td>Visualizar tarefas do dia</td>
          <td>O sistema deve exibir em uma área específica apenas as tarefas cuja data corresponde ao dia atual.</td>
        </tr>
        <!-- Gerenciamento de Listas -->
        <tr>
          <td rowspan="4">Gerenciamento de Listas</td>
          <td>RF3.1</td>
          <td>Cadastrar nova lista de tarefas</td>
          <td>Permitir que o usuário crie múltiplas listas de tarefas, cada uma com um nome específico.</td>
        </tr>
        <tr>
          <td>RF3.2</td>
          <td>Editar lista de tarefas</td>
          <td>Permitir a alteração do nome de uma lista de tarefas existente.</td>
        </tr>
        <tr>
          <td>RF3.3</td>
          <td>Excluir lista de tarefas</td>
          <td>Permitir a exclusão de uma lista de tarefas, o que também removerá todas as tarefas associadas a ela.</td>
        </tr>
        <tr>
          <td>RF3.4</td>
          <td>Visualizar todas as listas</td>
          <td>O sistema deve exibir uma listagem completa de todas as listas de tarefas criadas pelo usuário.</td>
        </tr>
      </tbody>
    </table>

<h3>Tabela de Requisitos Não Funcionais</h3>

  <table border="1">
      <thead>
        <tr>
          <th><strong>Código</strong></th>
          <th><strong>Requisito Não Funcional</strong></th>
          <th><strong>Descrição</strong></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>RNF01</td>
          <td>Usabilidade</td>
          <td>
            A interface deve ser simples, de modo que o usuário não tenha dificuldades de navegar entre as páginas do sistema, pois o foco do sistema é produtividade
          </td>
        </tr>
        <tr>
          <td>RNF02</td>
          <td>Suportabilidade</td>
          <td>
            O site deve funcionar nos navegadores Google Chrome (versão 137 ou mais), Mozilla Firefox (versão 139 ou mais), Safari (versão 18 ou mais) e Microsoft Edge (versão 137 ou mais), mantendo layout e funcionalidades. O Sistema deve ser acessado pelo desktop, não há suportabilidade para smartphones.
          </td>
        </tr>
        <tr>
          <td>RNF03</td>
          <td>Segurança</td>
          <td>
            A senha do usuário deve ser armazenada em hash no banco de dados.
          </td>
        </tr>
      </tbody>
    </table>