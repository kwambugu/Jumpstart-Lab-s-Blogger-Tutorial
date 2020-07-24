class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new 
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    # Uses params[:id] to find the article in the database
    @article = Article.find(params[:id])
    # Calls .destroy on that object
    @article.destroy
    # Redirects to the articles index page
    redirect_to articles_path
  end
end
