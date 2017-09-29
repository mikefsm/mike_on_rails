class PostsController < ApplicationController
  before_action :get_post, only: [:edit, :update, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
    @meta_title = meta_title 'Learning Rails One Small Step at a Time'
    @meta_description = 'Applying the Kaizen method of small steps to learning Ruby on Rails, Javascript, and more!'
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
    @meta_title = meta_title @post.title
    @meta_description = @post.meta_description
  end

  private

  def get_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :meta_description)
  end


end