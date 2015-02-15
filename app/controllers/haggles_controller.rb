class HagglesController < ApplicationController
  before_action :set_haggle, only: [:show, :edit, :update, :destroy]

  # GET /haggles
  # GET /haggles.json
  def index
    @haggles = Haggle.all
  end

  # GET /haggles/1
  # GET /haggles/1.json
  def show
  end

  # GET /haggles/new
  def new
    @haggle = Haggle.new
  end

  # GET /haggles/1/edit
  def edit
  end

  # POST /haggles
  # POST /haggles.json
  def create
    @haggle = Haggle.new(haggle_params)

    respond_to do |format|
      if @haggle.save
        format.html { redirect_to [Commodity.find(params[:commodity_id]), @haggle], notice: 'Haggle was successfully created.' }
        format.json { render :show, status: :created, location: @haggle }
      else
        format.html { render :new }
        format.json { render json: @haggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haggles/1
  # PATCH/PUT /haggles/1.json
  def update
    respond_to do |format|
      if @haggle.update(haggle_params)
        format.html { redirect_to @haggle, notice: 'Haggle was successfully updated.' }
        format.json { render :show, status: :ok, location: @haggle }
      else
        format.html { render :edit }
        format.json { render json: @haggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haggles/1
  # DELETE /haggles/1.json
  def destroy
    @haggle.destroy
    respond_to do |format|
      format.html { redirect_to haggles_url, notice: 'Haggle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haggle
      @haggle = Haggle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haggle_params
      params.require(:haggle).permit(:commodity_id, :open)
    end
end
