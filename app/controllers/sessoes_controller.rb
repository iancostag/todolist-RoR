class SessoesController < ApplicationController
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
end
