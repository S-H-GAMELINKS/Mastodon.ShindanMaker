class StaticPageController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
  end

  def contact
  end

  def result
    @user = current_user.name
    @theme = Post.find(params[:id]).theme.split(" ")
  end
end
