class SessoesController < ApplicationController
  layout "auth", only: [ :new ]

  before_action :redirecionar_se_autenticado, only: [ :new ]
  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:email])

    if usuario&.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      redirect_to listas_path, notice: "Login realizado com sucesso."
    else
      flash.now[:alert] = "Email ou senha inválidos"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to login_path, notice: "Logout realizado."
  end

  private

  def redirecionar_se_autenticado
    redirect_to tarefas_path if current_usuario.present?
  end
end
