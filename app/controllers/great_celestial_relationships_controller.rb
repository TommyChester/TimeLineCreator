class GreatCelestialRelationshipsController < ApplicationController
  before_action :set_great_celestial_relationship, only: [:show, :edit, :update, :destroy]

  # GET /great_celestial_relationships
  # GET /great_celestial_relationships.json
  def index
    @great_celestial_relationships = GreatCelestialRelationship.all
  end

  # GET /great_celestial_relationships/1
  # GET /great_celestial_relationships/1.json
  def show
  end

  # GET /great_celestial_relationships/new
  def new
    @great_celestial_relationship = GreatCelestialRelationship.new
  end

  # GET /great_celestial_relationships/1/edit
  def edit
  end

  # POST /great_celestial_relationships
  # POST /great_celestial_relationships.json
  def create
    @great_celestial_relationship = GreatCelestialRelationship.new(great_celestial_relationship_params)

    respond_to do |format|
      if @great_celestial_relationship.save
        format.html { redirect_to @great_celestial_relationship, notice: 'Great celestial relationship was successfully created.' }
        format.json { render :show, status: :created, location: @great_celestial_relationship }
      else
        format.html { render :new }
        format.json { render json: @great_celestial_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /great_celestial_relationships/1
  # PATCH/PUT /great_celestial_relationships/1.json
  def update
    respond_to do |format|
      if @great_celestial_relationship.update(great_celestial_relationship_params)
        format.html { redirect_to @great_celestial_relationship, notice: 'Great celestial relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @great_celestial_relationship }
      else
        format.html { render :edit }
        format.json { render json: @great_celestial_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /great_celestial_relationships/1
  # DELETE /great_celestial_relationships/1.json
  def destroy
    @great_celestial_relationship.destroy
    respond_to do |format|
      format.html { redirect_to great_celestial_relationships_url, notice: 'Great celestial relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_great_celestial_relationship
      @great_celestial_relationship = GreatCelestialRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def great_celestial_relationship_params
      params.require(:great_celestial_relationship).permit(:supercluster, :cluster, :galaxy, :arm, :distance_from_end_star_log, :distance_from_glactic_core_log, :angle_north_south_rad, :angle_east_west)
    end
end
