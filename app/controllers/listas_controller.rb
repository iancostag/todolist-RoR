class ListasController < ApplicationController
  before_action :requer_login
  before_action :set_lista, only: %i[ show edit update destroy ]

  # GET /listas or /listas.json
  def index
    @listas = current_usuario.listas
  end

  # GET /listas/1 or /listas/1.json
  def show
  end

  # GET /listas/new
  def new
    @lista = Lista.new
  end

  # GET /listas/1/edit
  def edit
  end

  # POST /listas or /listas.json
  def create
    @lista = current_usuario.listas.new(lista_params)

    respond_to do |format|
      if @lista.save
        format.html { redirect_to @lista, notice: t("flash.listas.create.success") }
        format.json { render :show, status: :created, location: @lista }
      else
        format.html { flash.now[:alert] = t("flash.listas.create.failure"); render :new, status: :unprocessable_entity }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listas/1 or /listas/1.json
  def update
    respond_to do |format|
      if @lista.update(lista_params)
        format.html { redirect_to @lista, notice: t("flash.listas.update.success") }
        format.json { render :show, status: :ok, location: @lista }
      else
        format.html { flash.now[:alert] = t("flash.listas.update.failure"); render :edit, status: :unprocessable_entity }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listas/1 or /listas/1.json
  def destroy
    @lista.destroy!

    respond_to do |format|
      format.html { redirect_to listas_path, status: :see_other, notice: t("flash.listas.destroy.success") }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista
      @lista = current_usuario.listas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lista_params
      params.require(:lista).permit(:titulo, :descricao)
    end
end
