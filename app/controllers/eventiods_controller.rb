class EventiodsController < ApplicationController
  before_action :set_eventiod, only: [:show, :edit, :update, :destroy]

  # GET /eventiods
  # GET /eventiods.json
  def index
    @eventiods = Eventiod.all
  end

  # GET /eventiods/1
  # GET /eventiods/1.json
  def show
  end

  # GET /eventiods/new
  def new
    @eventiod = Eventiod.new
  end

  # GET /eventiods/1/edit
  def edit
  end

  # POST /eventiods
  # POST /eventiods.json
  def create
    @eventiod = Eventiod.new(eventiod_params)

    respond_to do |format|
      if @eventiod.save
        format.html { redirect_to @eventiod, notice: 'Eventiod was successfully created.' }
        format.json { render :show, status: :created, location: @eventiod }
      else
        format.html { render :new }
        format.json { render json: @eventiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventiods/1
  # PATCH/PUT /eventiods/1.json
  def update
    respond_to do |format|
      if @eventiod.update(eventiod_params)
        format.html { redirect_to @eventiod, notice: 'Eventiod was successfully updated.' }
        format.json { render :show, status: :ok, location: @eventiod }
      else
        format.html { render :edit }
        format.json { render json: @eventiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventiods/1
  # DELETE /eventiods/1.json
  def destroy
    @eventiod.destroy
    respond_to do |format|
      format.html { redirect_to eventiods_url, notice: 'Eventiod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventiod
      @eventiod = Eventiod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventiod_params
      params.require(:eventiod).permit(:name, :description)
    end
end
