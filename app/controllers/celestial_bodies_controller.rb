class CelestialBodiesController < ApplicationController
  before_action :set_celestial_body, only: [:show, :edit, :update, :destroy]

  # GET /celestial_bodies
  # GET /celestial_bodies.json
  def index
    @celestial_bodies = CelestialBody.all
  end

  # GET /celestial_bodies/1
  # GET /celestial_bodies/1.json
  def show
  end

  # GET /celestial_bodies/new
  def new
    @celestial_body = CelestialBody.new
  end

  # GET /celestial_bodies/1/edit
  def edit
  end

  # POST /celestial_bodies
  # POST /celestial_bodies.json
  def create
    @celestial_body = CelestialBody.new(celestial_body_params)

    respond_to do |format|
      if @celestial_body.save
        format.html { redirect_to @celestial_body, notice: 'Celestial body was successfully created.' }
        format.json { render :show, status: :created, location: @celestial_body }
      else
        format.html { render :new }
        format.json { render json: @celestial_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celestial_bodies/1
  # PATCH/PUT /celestial_bodies/1.json
  def update
    respond_to do |format|
      if @celestial_body.update(celestial_body_params)
        format.html { redirect_to @celestial_body, notice: 'Celestial body was successfully updated.' }
        format.json { render :show, status: :ok, location: @celestial_body }
      else
        format.html { render :edit }
        format.json { render json: @celestial_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celestial_bodies/1
  # DELETE /celestial_bodies/1.json
  def destroy
    @celestial_body.destroy
    respond_to do |format|
      format.html { redirect_to celestial_bodies_url, notice: 'Celestial body was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celestial_body
      @celestial_body = CelestialBody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celestial_body_params
      params.require(:celestial_body).permit(:body_type, :volume, :mass)
    end
end
