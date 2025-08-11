require "test_helper"

class LoginTest < ActionDispatch::IntegrationTest
  def setup
    Tarefa.delete_all
    Lista.delete_all
    Usuario.delete_all
    @usuario = Usuario.create!(
      email: "teste@email.com",
      password: "123456",
      password_confirmation: "123456",
      confirmed_at: Time.now
    )
  end

  test "login com credenciais válidas" do
    post usuario_session_path, params: { usuario: { email: @usuario.email, password: "123456" } }
    assert_redirected_to sobre_path
    follow_redirect!
  end

  test "login com credenciais inválidas" do
    post usuario_session_path, params: { usuario: { email: @usuario.email, password: "errada" } }
    assert_response :unprocessable_entity
    assert_match "Email ou senha inválidos", response.body
  end
end
