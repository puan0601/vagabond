class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    article_id = params[:id]
    @article = Article.find(article_id)
  end

  def new
    @article = Article.new
    @locations = Location.all
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to @article
    end
  end

  def edit
    @locations = Location.all
    @article = Article.find_by_id(params[:id])
    if current_user.id = @article.user_id
      render :edit
    else
      redirect_to user_path
    end
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.update_attributes(article_params)
    redirect_to article_path
  end

  private

  def article_params
    params.require(:article).permit(:location_id, :user_id, :title, :content)
  end
end