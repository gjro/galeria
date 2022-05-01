class GaleriaController < ApplicationController
  before_action :set_galerium, only: %i[ show edit update destroy ]

  # GET /galeria or /galeria.json
  def index
    @galeria = Galerium.all
  end

  # GET /galeria/1 or /galeria/1.json
  def show
  end

  # GET /galeria/new
  def new
    @galerium = Galerium.new
  end

  # GET /galeria/1/edit
  def edit
  end

  # POST /galeria or /galeria.json
  def create
    @galerium = Galerium.new(galerium_params)

    respond_to do |format|
      if @galerium.save
        format.html { redirect_to galerium_url(@galerium), notice: "Galeria criada com sucesso!" }
        format.json { render :show, status: :created, location: @galerium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria/1 or /galeria/1.json
  def update
    respond_to do |format|
      if @galerium.update(galerium_params)
        format.html { redirect_to galerium_url(@galerium), notice: "Galeria atualizada com sucesso!" }
        format.json { render :show, status: :ok, location: @galerium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria/1 or /galeria/1.json
  def destroy
    @galerium.destroy

    respond_to do |format|
      format.html { redirect_to galeria_url, notice: "Galeria excluída com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galerium
      @galerium = Galerium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def galerium_params
      params.require(:galerium).permit(:title, :description, :data_comemorativa, imagens: [])
    end
end
