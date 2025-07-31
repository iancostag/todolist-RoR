require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get new (formulário de cadastro)" do
    get cadastro_path
    assert_response :success
  end

  test "should create user with valid params" do
    post usuarios_path, params: {
      usuario: {
        email: "novo@email.com",
        password: "123456",
        password_confirmation: "123456"
      }
    }

    assert_response :redirect
    follow_redirect!
    assert_match "Conta criada com sucesso", response.body
  end
end
