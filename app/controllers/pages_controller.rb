class PagesController < ApplicationController
  def home
    if logged_in?
      @post = current_user.posts.build if logged_in?
      @all_posts = current_user.tweets.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end
end
