class HomeController < ApplicationController

  def index
    @locations = Location.order(id: :desc).limit(5)
    @articles = Article.order(id: :desc).limit(10)
  end

end
