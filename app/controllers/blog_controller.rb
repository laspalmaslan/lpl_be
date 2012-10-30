class BlogController < ApplicationController
  def index
    @posts = Post.where("published_at IS NOT NULL").order("published_at DESC")
  end

  def show
    @post = Post.where("published_at IS NOT NULL").find(params[:id])
  end
end
