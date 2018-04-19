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
    @post = Post.find(params[:id])
  end
end
