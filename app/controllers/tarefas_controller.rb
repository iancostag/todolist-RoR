class TarefasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_tarefa, only: %i[ show edit update destroy ]

# GET /tarefas or /tarefas.json
def index
  data_inicial = params[:data] ? Date.parse(params[:data]) : Date.today
  datas = (data_inicial..(data_inicial + 30)).to_a

  tarefas = current_usuario.listas.joins(:tarefas)
              .where("tarefas.prazo >= ?", data_inicial)


  tarefas = tarefas.select("tarefas.*").order("tarefas.prazo ASC")

  tarefas_agrupadas = tarefas.group_by(&:prazo)
  @tarefas_por_dia = datas.map { |data| [ data, tarefas_agrupadas[data] || [] ] }.to_h
  @data_inicial = data_inicial
end



  def hoje
    logger.warn ">>> ENTROU NA ACTION HOJE"
    @dia = Date.today
    @tarefas_hoje = current_usuario.listas
    .joins(:tarefas)
    .where("tarefas.prazo = ?", Date.today)
    .select("tarefas.*")
    .order("tarefas.concluida ASC, tarefas.created_at ASC")
    render "hoje"
  end


  # GET /tarefas/1 or /tarefas/1.json
  def show
  end

  # GET /tarefas/new
  def new
    @tarefa = Tarefa.new
  end

  # GET /tarefas/1/edit
  def edit
  end

  # POST /tarefas or /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)

    unless current_usuario.listas.exists?(@tarefa.lista_id)
      redirect_to tarefas_path, alert: "Lista inválida" and return
    end

    respond_to do |format|
      if @tarefa.save
        format.html { redirect_to tarefas_path, notice: "Tarefa criada com sucesso!" }
        format.json { render :show, status: :created, location: @tarefa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarefas/1 or /tarefas/1.json
  def update
    @tarefa = Tarefa.find(params[:id])
    if @tarefa.update(tarefa_params)
      redirect_to tarefas_path, notice: "Tarefa atualizada."
    else
      redirect_to tarefas_path, alert: "Erro ao atualizar tarefa."
    end
  end


  # DELETE /tarefas/1 or /tarefas/1.json
  def destroy
    if @tarefa
      @tarefa.destroy!
      respond_to do |format|
        format.html { redirect_to tarefas_path, status: :see_other, notice: "A tarefa foi excluída com sucesso!" }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to tarefas_path, alert: "Ação não autorizada." }
        format.json { head :forbidden }
      end
    end
  end


  private
    def set_tarefa
      @tarefa = Tarefa.joins(:lista)
                      .where(listas: { usuario_id: current_usuario.id })
                      .find_by(id: params[:id])

      unless @tarefa
        respond_to do |format|
          format.html { redirect_to tarefas_path }
          format.json { head :not_found }
        end
      end
    end


    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:titulo, :descricao, :concluida, :prazo, :lista_id)
    end
end
