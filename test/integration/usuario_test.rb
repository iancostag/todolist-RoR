require "test_helper"

class UsuarioCadastroTest < ActionDispatch::IntegrationTest
  test "falha ao criar conta com senhas diferentes" do
    assert_no_difference "Usuario.count" do
      post usuario_registration_path, params: {
        usuario: {
          email: "falha@email.com",
          password: "123456",
          password_confirmation: "654321"
        }
      }
    end
    assert_response :unprocessable_entity
    assert_match "Confirmação de senha não é igual a Senha", response.body
  end
end
