class PostsController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin", except: :show
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("published_at DESC").all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new()
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
    end
  end

  def publish_post
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.publish
        format.html { redirect_to posts_path, notice: 'Post published.' }
      else
        format.html { redirect_to posts_path, notice: 'Sorry, Error.' }
      end
    end
  end

  def unpublish_post
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.unpublish
        format.html { redirect_to posts_path, notice: 'Post unpublished.' }
      else
        format.html { redirect_to posts_path, notice: 'Sorry, Error.' }
      end
    end
  end
end
