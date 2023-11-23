class RequisController < ApplicationController
  before_action :set_requi, only: %i[ show edit update destroy ]

  # GET /requis or /requis.json
  def index
    @requis = Requi.all
  end

  # GET /requis/1 or /requis/1.json
  def show
  end

  # GET /requis/new
  def new
    @requi = Requi.new
    @requi.user_id = current_user.id
    @atividade = Atividade.all
    @modalidade = Modalidade.all
  end

  # GET /requis/1/edit
  def edit
  end

  # POST /requis or /requis.json
  def create
    @requi = Requi.new(requi_params)

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
      params.require(:requi).permit(:titulo, :user_id, :atividade_id, :modalidade_id, :file)
    end
end
