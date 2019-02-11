class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user), status: :ok
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to json: @user, status: :created
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
