require "application_system_test_case"

class ListasTest < ApplicationSystemTestCase
  setup do
    @lista = listas(:one)
  end

  test "visitando a index" do
    visit listas_url
    assert_selector "h1", text: "Listas"
  end

  test "cria uma nova lista" do
    visit listas_url
    click_on "Nova lista"

    fill_in "Título", with: @lista.titulo
    fill_in "Descrição", with: @lista.descricao
    click_on "Salvar lista"

    assert_text "Lista criada com sucesso!"
    click_on "Voltar para as listas"
  end

  test "atualiza uma lista existente" do
    visit lista_url(@lista)
    click_on "Editar"

    fill_in "Título", with: "Novo título de teste"
    fill_in "Descrição", with: "Nova descrição"
    click_on "Salvar lista"

    assert_text "Lista atualizada com sucesso!"
    click_on "Voltar para as listas"
  end

  test "exclui uma lista" do
    visit lista_url(@lista)
    click_on "Excluir", match: :first

    assert_text "Lista excluída com sucesso!"
  end
end
