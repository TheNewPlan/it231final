class FinalesController < ApplicationController
  before_action :set_finale, only: [:show, :edit, :update, :destroy]

  # GET /finales
  # GET /finales.json
  def index
    @finales = Finale.all
  end

  # GET /finales/1
  # GET /finales/1.json
  def show
  end

  # GET /finales/new
  def new
    @finale = Finale.new
  end

  # GET /finales/1/edit
  def edit
  end

  # POST /finales
  # POST /finales.json
  def create
    @finale = Finale.new(finale_params)

    respond_to do |format|
      if @finale.save
        format.html { redirect_to @finale, notice: 'Finale was successfully created.' }
        format.json { render :show, status: :created, location: @finale }
      else
        format.html { render :new }
        format.json { render json: @finale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finales/1
  # PATCH/PUT /finales/1.json
  def update
    respond_to do |format|
      if @finale.update(finale_params)
        format.html { redirect_to @finale, notice: 'Finale was successfully updated.' }
        format.json { render :show, status: :ok, location: @finale }
      else
        format.html { render :edit }
        format.json { render json: @finale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finales/1
  # DELETE /finales/1.json
  def destroy
    @finale.destroy
    respond_to do |format|
      format.html { redirect_to finales_url, notice: 'Finale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finale
      @finale = Finale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finale_params
      params.require(:finale).permit(:series, :viewership, :rating, :share, :date, :network)
    end
end
