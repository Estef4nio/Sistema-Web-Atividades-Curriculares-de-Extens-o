class RequisController < ApplicationController
  before_action :set_requi, only: [:show, :edit, :update, :destroy, :approve, :reject]




  # GET /requis or /requis.json
  def index
    @requis = Requi.all
  end

  def approve
    if @requi.update(verify: true)
      user = @requi.user
      user.update(total_horas: user.total_horas.to_i + @requi.atividade.horas.to_i)
      Rails.logger.info("Total de horas atualizado com sucesso. Novo total de horas: #{user.total_horas}")
      redirect_to @requi, notice: 'Requisição aprovada com sucesso.'
    else
      Rails.logger.error("Erro ao aprovar a requisição. Erros: #{user.errors.full_messages}")
      redirect_to @requi, alert: 'Erro ao aprovar a requisição.'
    end
  end

  def reject
    if @requi.update(verify: false)
      redirect_to @requi, notice: 'Requisição recusada com sucesso.'
    else
      redirect_to @requi, alert: 'Erro ao rejeitar a requisição.'
    end
  end  

  # GET /requis/1 or /requis/1.json
  def show
  end

  # GET /requis/new
  def new
    @requi = Requi.new
    @requi.user_id = current_user.id
    @atividade = Atividade.all.uniq(&:nome)
    @modalidade = Modalidade.all.uniq(&:nome)
  end

  # GET /requis/1/edit
  def edit
    @atividade = Atividade.all
    @modalidade = Modalidade.all
  end

  # POST /requis or /requis.json
  def create
    @requi = Requi.new(requi_params)
     @requi.approved = false ################



    respond_to do |format|
      if @requi.save
        format.html { redirect_to requi_url(@requi), notice: "Requi was successfully created." }
        format.json { render :show, status: :created, location: @requi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requis/1 or /requis/1.json
  def update
    respond_to do |format|
      if @requi.update(requi_params)
        format.html { redirect_to requi_url(@requi), notice: "Requi was successfully updated." }
        format.json { render :show, status: :ok, location: @requi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requis/1 or /requis/1.json
  def destroy
    @requi.destroy

    respond_to do |format|
      format.html { redirect_to requis_url, notice: "Requi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_requi
      @requi = Requi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requi_params
      params.require(:requi).permit(:titulo, :user_id, :atividade_id, :modalidade_id, :file, :horas) ###############
    end
end