class ThingsController < ApplicationController
    def new
    end

    def create
        @thing = Thing.new(thing_params)
 
        @thing.save
        redirect_to @thing
    end

    def show
        @thing = Thing.find(params[:id])
    end

private
    def thing_params
        params.require(:thing).permit(:what_is_it, :about)
    end
end
