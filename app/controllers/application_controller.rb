class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_usuario

  private

  def current_usuario
    @current_usuario ||= Usuario.find_by(id: session[:usuario_id])
  end

  def requer_login
    redirect_to login_path, alert: "Você precisa estar logado." unless current_usuario
  end
end
