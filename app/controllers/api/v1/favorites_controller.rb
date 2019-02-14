class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites, status: :ok
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite, status: :ok
  end

  def create
    @favorite = Favorite.create(favorite_params)
    render json: @favorite, status: :created
  end

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.update(favorite_params)
    render json: @favorite
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :show_id)
  end

end
