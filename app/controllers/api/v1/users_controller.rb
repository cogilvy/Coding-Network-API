class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def destroy
    User.destroy(User.find(params[:id]).id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password_digest)
  end
end
