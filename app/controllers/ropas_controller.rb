class RopasController < ApplicationController
  before_action :set_ropa, only: [:show, :edit, :update, :destroy]

  # GET /ropas
  # GET /ropas.json
  def index
    @ropas = Ropa.all
  end

  # GET /ropas/1
  # GET /ropas/1.json
  def show
  end

  # GET /ropas/new
  def new
    @ropa = Ropa.new
  end

  # GET /ropas/1/edit
  def edit
  end

  # POST /ropas
  # POST /ropas.json
  def create
    @ropa = Ropa.new(ropa_params)

    respond_to do |format|
      if @ropa.save
        format.html { redirect_to @ropa, notice: 'Ropa was successfully created.' }
        format.json { render :show, status: :created, location: @ropa }
      else
        format.html { render :new }
        format.json { render json: @ropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ropas/1
  # PATCH/PUT /ropas/1.json
  def update
    respond_to do |format|
      if @ropa.update(ropa_params)
        format.html { redirect_to @ropa, notice: 'Ropa was successfully updated.' }
        format.json { render :show, status: :ok, location: @ropa }
      else
        format.html { render :edit }
        format.json { render json: @ropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ropas/1
  # DELETE /ropas/1.json
  def destroy
    @ropa.destroy
    respond_to do |format|
      format.html { redirect_to ropas_url, notice: 'Ropa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ropa
      @ropa = Ropa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ropa_params
      params.require(:ropa).permit(:nombre, :tipo, :picture)
    end
end
