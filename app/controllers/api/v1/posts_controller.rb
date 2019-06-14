class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def destroy
    Post.destroy(Post.find(params[:id]).id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :user_id)
  end
end
