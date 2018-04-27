class StaticPageController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
  end

  def contact
  end

  def result
    @theme = Post.find(params[:id]).theme.split(" ")
    @result = "#{current_user.name}さんは#{@theme[rand(@theme.count)]}"
    @share = "#{@result}##{Post.find(params[:id]).title}"
  end
end
