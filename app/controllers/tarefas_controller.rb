class TarefasController < ApplicationController
  layout "dashboard"
  before_action :authenticate_usuario!
  before_action :set_tarefa, only: %i[ show edit update destroy ]

# GET /tarefas or /tarefas.json
def index
  data_inicial = params[:data] ? Date.parse(params[:data]) : Date.today
  datas = (data_inicial..(data_inicial + 30)).to_a

  tarefas = Tarefa.joins(:lista)
    .where("tarefas.prazo >= ?", data_inicial)
    .where(listas: { usuario_id: current_usuario.id })
    .order("tarefas.prazo ASC, listas.titulo ASC, tarefas.concluida ASC, tarefas.created_at ASC")

  tarefas_agrupadas = tarefas.group_by(&:prazo)
  @tarefas_por_dia = datas.map { |data| [ data, tarefas_agrupadas[data] || [] ] }.to_h
  @data_inicial = data_inicial
end


  def hoje
    @dia = Date.today
    @tarefas_hoje = Tarefa.joins(:lista)
      .where(prazo: @dia, listas: { usuario_id: current_usuario.id })
      .order("listas.titulo ASC", :concluida, :created_at)
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
        format.html { redirect_to params[:tarefa][:redirect_to] || tarefas_path, notice: "Tarefa criada com sucesso!" }
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
      redirect_path = params[:redirect_to].presence || params.dig(:tarefa, :redirect_to).presence || tarefas_path
      redirect_to redirect_path, notice: "Tarefa atualizada."
    else
      redirect_path = params[:redirect_to].presence || params.dig(:tarefa, :redirect_to).presence || tarefas_path
      redirect_to redirect_path, alert: "Erro ao atualizar tarefa."
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
