class HomeController < ApplicationController

  def index
    @locations = Location.order(id: :desc).limit(3)
    @articles = Article.order(id: :desc).limit(6)
  end

end
