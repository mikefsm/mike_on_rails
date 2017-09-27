class PostsController < ApplicationController
  before_action :get_post, only: [:edit, :update, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = 'Post Created Successfully!'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = 'Post Updated Successfully!'
      redirect_to root_url
    else
      render :edit
    end
  end

  def show
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :user)
  end


end