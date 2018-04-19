class StaticPageController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
  end

  def contact
  end

  def result
    @user = "S.H."
    @theme = Post.find(params[:id]).theme.split(" ")
  end
end
