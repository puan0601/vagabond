class LocationsController < ApplicationController

  def index
    @cities = Location.all
  end

  def show
    @city = Location.find(params[:id])
    render :show
  end
end
