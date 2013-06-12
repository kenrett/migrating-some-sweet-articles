class TagsController.rb < ApplicationController

  def index
  end

  def create

  end

  def show
    @tag = Tag.find(params[:id])
    @articles = Article.all
  end

  def destroy

  end

end
