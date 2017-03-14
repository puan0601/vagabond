class LocationsController < ApplicationController

  def index
    @cities = Location.all
  end
end
