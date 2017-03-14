class HomeController < ApplicationController

  def index
    @locations = Location.all
    @articles = Article.order(id: :desc).limit(10)
  end

end
