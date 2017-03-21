class HomeController < ApplicationController

  def index
    @locations = Location.order("RANDOM()").limit(1)
    add_crumb "home", "/"
  end

end
