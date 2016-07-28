class PlacesController < ApplicationController

 def index
  @places = Place.order("name").page(params[:page]).per_page(1)
 end


def new
  @place = Place.new
end

def  creat
  Place.create(place_params)
  redirec_to_root_path
  end

  private

  def place_params
    param.require(:place).permit(:name, :description, :address)
end

end