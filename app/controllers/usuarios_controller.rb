class UsuariosController < ApplicationController
  def new
      @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if  @usuario.save
      session[:usuario_id] = @usuario.id
      redirect_to listas_path, notice: "Conta criada com sucesso!"
    else
    flash.now[:alert] = "Erro ao criar conta."
    render :new, status: :unprocessable_entity
    end
  end


  def usuario_params
  params.require(:usuario).permit(:email, :password, :password_confirmation)
  end
end
