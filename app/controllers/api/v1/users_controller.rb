class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :show, :index]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def profile
    render json: { user: UserSerializer.new(session_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { errors: 'failed to create user' }, status: :not_acceptable
    end
  end

  def destroy
    User.destroy(User.find(params[:id]).id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
