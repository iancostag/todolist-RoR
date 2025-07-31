require "test_helper"

class UsuarioCadastroTest < ActionDispatch::IntegrationTest
  test "criação de conta com dados válidos" do
    assert_difference "Usuario.count", 1 do
      post usuarios_path, params: {
        usuario: {
          email: "novo@email.com",
          password: "123456",
          password_confirmation: "123456"
        }
      }
    end

    assert_redirected_to listas_path
    follow_redirect!
    assert_match "Conta criada com sucesso", response.body
  end

  test "falha ao criar conta com senhas diferentes" do
    assert_no_difference "Usuario.count" do
      post usuarios_path, params: {
        usuario: {
          email: "falha@email.com",
          password: "123456",
          password_confirmation: "654321"
        }
      }
    end

    assert_response :unprocessable_entity
    assert_match "Erro ao criar conta", response.body
  end
end
