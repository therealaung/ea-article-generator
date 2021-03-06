class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def random
    @article = Article.order("RANDOM()").first
    redirect_to @article
  end
end
