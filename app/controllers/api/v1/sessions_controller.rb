class Api::V1::SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    render json: @users, status: :ok
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to json: user_path(@user), status: :created
    else
      flash[:notice] = 'Invalid username or password'
      redirect_to json: login_path
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'You logged out!'
    redirect_to json: home_path
  end

end
