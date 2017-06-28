class PostsController < ApplicationController #Controller is a class defined to inherit from ApplicationController
  before_action :require_login, only: [:create, :show, :new]

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message) # Whitelist controller parameters to prevent wrongful mass assignment
  end
end
