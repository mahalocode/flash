class ApplicationController < ActionController::Base
  def index
    @palces= Place.all
end

  def new
    @places = Place.new

   end
end
  