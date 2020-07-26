class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    # Uses params[:id] to find the article in the database
    @tag = Tag.find(params[:id])
    # Calls .destroy on that object
    @tag.destroy

    flash.notice = "Article '#{@tag.name}' deleted!"

    # Redirects to the articles index page
    redirect_to tags_path
  end
end
