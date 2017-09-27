class PagesController < ApplicationController

  def home
    @posts = Post.all.order(created_at: :desc).limit(3)
  end

end