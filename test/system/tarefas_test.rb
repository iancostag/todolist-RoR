require "application_system_test_case"

class TarefasTest < ApplicationSystemTestCase
  def setup
    @usuario = Usuario.create!(email: "teste@example.com", password: "senha123")
    @lista = @usuario.listas.create!(titulo: "Lista de Teste")
    @tarefa = @lista.tarefas.create!(
      titulo: "Tarefa Atrasada",
      descricao: "Tarefa pendente e vencida",
      prazo: Date.yesterday,
      concluida: false
    )
  end

  test "usuário vê tarefas da lista com status e ações" do
    visit login_path
    fill_in "email", with: @usuario.email
    fill_in "password", with: "senha123"
    click_button "Entrar"

    visit lista_path(@lista)

    assert_text "Tarefa Atrasada"
    assert_text "Tarefa pendente e vencida"
    assert_text "Atrasada"
    assert_selector "a", text: "Editar"
    assert_selector "form button", text: "Excluir"
  end

  test "usuário exclui uma tarefa da lista" do
    visit login_path
    fill_in "email", with: @usuario.email
    fill_in "password", with: "senha123"
    click_button "Entrar"

    visit lista_path(@lista)

    accept_confirm do
      click_button "Excluir"
    end

    assert_no_text "Tarefa Atrasada"
  end
end
