require "application_system_test_case"

class ListasTest < ApplicationSystemTestCase
  setup do
    @lista = listas(:one)
  end

  test "visiting the index" do
    visit listas_url
    assert_selector "h1", text: "Listas"
  end

  test "should create lista" do
    visit listas_url
    click_on "New lista"

    fill_in "Descricao", with: @lista.descricao
    fill_in "Titulo", with: @lista.titulo
    click_on "Create Lista"

    assert_text "Lista was successfully created"
    click_on "Back"
  end

  test "should update Lista" do
    visit lista_url(@lista)
    click_on "Edit this lista", match: :first

    fill_in "Descricao", with: @lista.descricao
    fill_in "Titulo", with: @lista.titulo
    click_on "Update Lista"

    assert_text "Lista was successfully updated"
    click_on "Back"
  end

  test "should destroy Lista" do
    visit lista_url(@lista)
    click_on "Destroy this lista", match: :first

    assert_text "Lista was successfully destroyed"
  end
end
