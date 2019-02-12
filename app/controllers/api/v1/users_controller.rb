class Api::V1::UsersController < ApplicationController

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
    if @user.valid?
      render json: @user, message: "Created User!"
    else
      render json: {message: @user.errors.full_messages}
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def logged_in
    @user = User.find {|user| user.name.downcase === params[:name].downcase}
    if @user
      if @user.authenticate(params[:user][:password])
        render json: @user
      else
        render json: {message: "Wrong username or password"}
      end
    else
      render json: {message: "Username does not exist"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
