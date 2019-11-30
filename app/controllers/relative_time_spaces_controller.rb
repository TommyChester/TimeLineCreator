class RelativeTimeSpacesController < ApplicationController
  before_action :set_relative_time_space, only: [:show, :edit, :update, :destroy]

  # GET /relative_time_spaces
  # GET /relative_time_spaces.json
  def index
    @relative_time_spaces = RelativeTimeSpace.all
  end

  # GET /relative_time_spaces/1
  # GET /relative_time_spaces/1.json
  def show
  end

  # GET /relative_time_spaces/new
  def new
    @relative_time_space = RelativeTimeSpace.new
  end

  # GET /relative_time_spaces/1/edit
  def edit
  end

  # POST /relative_time_spaces
  # POST /relative_time_spaces.json
  def create
    @relative_time_space = RelativeTimeSpace.new(relative_time_space_params)

    respond_to do |format|
      if @relative_time_space.save
        format.html { redirect_to @relative_time_space, notice: 'Relative time space was successfully created.' }
        format.json { render :show, status: :created, location: @relative_time_space }
      else
        format.html { render :new }
        format.json { render json: @relative_time_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relative_time_spaces/1
  # PATCH/PUT /relative_time_spaces/1.json
  def update
    respond_to do |format|
      if @relative_time_space.update(relative_time_space_params)
        format.html { redirect_to @relative_time_space, notice: 'Relative time space was successfully updated.' }
        format.json { render :show, status: :ok, location: @relative_time_space }
      else
        format.html { render :edit }
        format.json { render json: @relative_time_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relative_time_spaces/1
  # DELETE /relative_time_spaces/1.json
  def destroy
    @relative_time_space.destroy
    respond_to do |format|
      format.html { redirect_to relative_time_spaces_url, notice: 'Relative time space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relative_time_space
      @relative_time_space = RelativeTimeSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relative_time_space_params
      params.require(:relative_time_space).permit(:epoch, :epochtime)
    end
end
