require "application_system_test_case"

class ListaTest < ApplicationSystemTestCase
  setup do
    @listum = lista(:one)
  end

  test "visiting the index" do
    visit lista_url
    assert_selector "h1", text: "Lista"
  end

  test "should create listum" do
    visit lista_url
    click_on "New listum"

    fill_in "Descricao", with: @listum.descricao
    fill_in "Titulo", with: @listum.titulo
    click_on "Create Listum"

    assert_text "Listum was successfully created"
    click_on "Back"
  end

  test "should update Listum" do
    visit listum_url(@listum)
    click_on "Edit this listum", match: :first

    fill_in "Descricao", with: @listum.descricao
    fill_in "Titulo", with: @listum.titulo
    click_on "Update Listum"

    assert_text "Listum was successfully updated"
    click_on "Back"
  end

  test "should destroy Listum" do
    visit listum_url(@listum)
    click_on "Destroy this listum", match: :first

    assert_text "Listum was successfully destroyed"
  end
end
