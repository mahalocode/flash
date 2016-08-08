class ApplicationController < ActionController::Base
  def index
    @places= Place.all
end

  def new
    @places = Place.new

   end
end
  