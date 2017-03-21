class LocationsController < ApplicationController

  add_crumb("Locations") { |instance| instance.send :cities_path }

  def index
    @cities = Location.all
  end

  def show
    @city = Location.find(params[:id])
    render :show
  end
end
