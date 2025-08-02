require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get new (formulário de cadastro)" do
    get new_usuario_registration_path
    assert_response :success
  end

  test "should not create user with invalid email" do
  post usuario_registration_path, params: { usuario: { email: "", password: "123", password_confirmation: "321" } }
  assert_response :unprocessable_entity
  assert_match "Email não pode ficar em branco", response.body
  end
end
