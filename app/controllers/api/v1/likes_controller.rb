class Api::V1::LikesController < ApplicationController
  skip_before_action :authorized
  def index
    @likes = Like.all
    render json: @likes
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @like.save
  end

  def destroy
    Like.destroy(Like.find(params[:id]).id)
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
