class PostsController < ApplicationController
  before_action :logged_in, only: [:create, :destroy]

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Posted!"
      redirect_to root_url
    else
      @all_posts = []
      redirect_to root_url
    end
  end

  def destroy
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url if @post.nil?
    @post.destroy
    flash[:success] = "deleted"
    redirect_to request.referrer
  end


  private

  def post_params
    params.require(:post).permit(:content)
  end
end
