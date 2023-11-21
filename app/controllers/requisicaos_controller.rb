class RequisicaosController < ApplicationController
  before_action :set_requisicao, only: %i[ show edit update destroy ]

  # GET /requisicaos or /requisicaos.json
  def index
    @requisicaos = Requisicao.all
  end

  # GET /requisicaos/1 or /requisicaos/1.json
  def show
  end

  # GET /requisicaos/new
  def new
    @requisicao = Requisicao.new
  end

  # GET /requisicaos/1/edit
  def edit
  end

  # POST /requisicaos or /requisicaos.json
  def create
    @requisicao = Requisicao.new(requisicao_params)

    respond_to do |format|
      if @requisicao.save
        format.html { redirect_to requisicao_url(@requisicao), notice: "Requisicao was successfully created." }
        format.json { render :show, status: :created, location: @requisicao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisicaos/1 or /requisicaos/1.json
  def update
    respond_to do |format|
      if @requisicao.update(requisicao_params)
        format.html { redirect_to requisicao_url(@requisicao), notice: "Requisicao was successfully updated." }
        format.json { render :show, status: :ok, location: @requisicao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicaos/1 or /requisicaos/1.json
  def destroy
    @requisicao.destroy

    respond_to do |format|
      format.html { redirect_to requisicaos_url, notice: "Requisicao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisicao
      @requisicao = Requisicao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requisicao_params
      params.require(:requisicao).permit(:titulo, :file)
    end
end
