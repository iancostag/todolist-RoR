require "test_helper"

class TarefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarefa = tarefas(:one)
    log_in_as(usuarios(:one))
  end

  test "should get index" do
    get tarefas_url
    assert_response :success
  end

  test "should get new" do
    get new_tarefa_url
    assert_response :success
  end

  test "should create tarefa" do
    assert_difference("Tarefa.count") do
      post tarefas_url, params: { tarefa: { concluida: @tarefa.concluida, descricao: @tarefa.descricao, lista_id: @tarefa.lista_id, prazo: @tarefa.prazo, titulo: @tarefa.titulo } }
    end

    assert_redirected_to tarefas_url
  end

  test "should show tarefa" do
    get tarefa_url(@tarefa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarefa_url(@tarefa)
    assert_response :success
  end

  test "should update tarefa" do
    patch tarefa_url(@tarefa), params: { tarefa: { concluida: @tarefa.concluida, descricao: @tarefa.descricao, lista_id: @tarefa.lista_id, prazo: @tarefa.prazo, titulo: @tarefa.titulo } }
    assert_redirected_to tarefas_url
  end

  test "should destroy tarefa" do
    assert_difference("Tarefa.count", -1) do
      delete tarefa_url(@tarefa)
    end

    assert_redirected_to tarefas_url
  end
  test "should not create tarefa sem titulo" do
  assert_no_difference("Tarefa.count") do
    post tarefas_url, params: { tarefa: { titulo: "", descricao: "Sem título", lista_id: @tarefa.lista_id } }
  end
  assert_response :unprocessable_entity
  end
  test "Não deve destruir tarefa de outro usuario" do
  log_in_as(usuarios(:two))
  assert_no_difference("Tarefa.count") do
    delete tarefa_url(tarefas(:one))
  end
  assert_response :redirect
  assert_redirected_to tarefas_path
  follow_redirect!
  assert_match "Tarefa não encontrada ou não autorizada.", response.body
  end
  test "should redirect tarefas index if not logged in" do
  delete logout_path
  get tarefas_url
  assert_redirected_to login_path
  end

  test "tarefas index filtra por data" do
  log_in_as(usuarios(:one))
  get tarefas_url, params: { data: Date.today }
  assert_response :success
    # Dependendo da view, pode usar assert_select ou assert_includes para checar as tarefas certas
  end
end
