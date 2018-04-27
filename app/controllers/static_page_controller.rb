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
    @title = "#" + Post.find(params[:id]).title
    @result = "#{@user}さんは#{@theme[rand(@theme.count)]}#{@title}" + "\n #Mastodon診断アプリ"
  end
end
