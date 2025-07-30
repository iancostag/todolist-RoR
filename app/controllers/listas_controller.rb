class ListasController < ApplicationController
  before_action :set_lista, only: %i[ show edit update destroy ]

  # GET /listas or /listas.json
  def index
    @listas = Lista.all
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
    @lista = Lista.new(lista_params)

    respond_to do |format|
      if @lista.save
        format.html { redirect_to @lista, notice: "Lista was successfully created." }
        format.json { render :show, status: :created, location: @lista }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listas/1 or /listas/1.json
  def update
    respond_to do |format|
      if @lista.update(lista_params)
        format.html { redirect_to @lista, notice: "Lista was successfully updated." }
        format.json { render :show, status: :ok, location: @lista }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listas/1 or /listas/1.json
  def destroy
    @lista.destroy!

    respond_to do |format|
      format.html { redirect_to listas_path, status: :see_other, notice: "Lista was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista
      @lista = Lista.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def lista_params
      params.expect(lista: [ :titulo, :descricao ])
    end
end
