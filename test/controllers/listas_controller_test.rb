require "test_helper"

class ListasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista = listas(:one)
  end

  test "should get index" do
    log_in_as(usuarios(:one))
    get listas_url
    assert_response :success
  end

  test "should get new" do
    log_in_as(usuarios(:one))
    get new_lista_url
    assert_response :success
  end

  test "should create lista" do
    log_in_as(usuarios(:one))
    assert_difference("Lista.count") do
      post listas_url, params: { lista: { descricao: @lista.descricao, titulo: @lista.titulo } }
    end
    assert_redirected_to lista_url(Lista.last)
  end

  test "should show lista" do
    log_in_as(usuarios(:one))
    get lista_url(@lista)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(usuarios(:one))
    get edit_lista_url(@lista)
    assert_response :success
  end

  test "should update lista" do
    log_in_as(usuarios(:one))
    patch lista_url(@lista), params: { lista: { descricao: @lista.descricao, titulo: @lista.titulo } }
    assert_redirected_to lista_url(@lista)
  end

  test "should destroy lista" do
    log_in_as(usuarios(:one))
    assert_difference("Lista.count", -1) do
      delete lista_url(@lista)
    end
    assert_redirected_to listas_url
  end

  test "should show only lista do usuario logado" do
    log_in_as(usuarios(:one))
    get lista_url(listas(:one))
    assert_response :success
    assert_select "h2", text: listas(:one).titulo
    assert_select "p", text: /#{listas(:one).descricao}/
  end

  test "should not show lista de outro usuario" do
    log_in_as(usuarios(:one))
    get lista_url(listas(:two))
    assert_response :not_found
  end

  test "should redirect show if not logged in" do
    get lista_url(listas(:one))
    assert_response :redirect
    assert_redirected_to new_usuario_session_path
  end
  test "should not create lista sem titulo" do
  log_in_as(usuarios(:one))
  assert_no_difference("Lista.count") do
    post listas_url, params: { lista: { titulo: "", descricao: "Teste" } }
  end
  assert_response :unprocessable_entity
  end
  test "should not update lista de outro usuario" do
  log_in_as(usuarios(:two))
  patch lista_url(listas(:one)), params: { lista: { titulo: "Hacked" } }
  assert_response :not_found
  end
end
