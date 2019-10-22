
class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:title], content: params[:content])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def index
  end
end