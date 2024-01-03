class PostsController < ApplicationController
  before_action :get_post, only: [:show, :edit, :update, :destroy]
  # *** CRUD Actions *** 7 methods - 4 methods are views

  # view
  def index
    @posts = Post.all
  end

  # view
  def show
    # @post = Post.find(params[:id])
  end

  # view
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post has been created!"
    else
      redirect_to new_post_path, notice: "Input fields have minimum lengths! Please try again!"
    end
  end

  # view
  def edit
    # @post = Post.find(params[:id])
  end

  def update
    # @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: "Post has been updated"
    else
      redirect_to edit_post_path(@post), notice: "Input fields have minimum lengths! Please try again!"
    end
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url, notice: "Post: #{@post.title} is Deleted!"
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
