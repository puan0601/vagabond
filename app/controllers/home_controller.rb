class HomeController < ApplicationController

  def index
    @locations = Location.order("RANDOM()").limit(1)
    @articles = Article.order(id: :desc).limit(3)
  end

end
