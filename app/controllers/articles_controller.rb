class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    p @article
  end  

  def index
    @categories = Category.all
    @articles = Article.all
  end

  def create
  end

  def destroy
  end

  def yeabuddy
    gsubbed_title = params[:title].gsub(/-/, " ")
    @article = Article.where('title = ?', gsubbed_title)
    redirect_to category_article_path(@article.first.category_id, @article.first.id)
  end

end
