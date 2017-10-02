class PagesController < ApplicationController

  def about
    @meta_title = meta_title 'About'
    @meta_description = 'What is Kaizen and how can it be applied to Ruby on Rails and other development platforms as well as incorporated into life in general.'
  end

  def home
    @posts = Post.all.order(created_at: :desc).limit(3)
  end

end