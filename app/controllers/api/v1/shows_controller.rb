class Api::V1::ShowsController < ApplicationController

  def index
    @shows = Show.all
    render json: @shows, status: :ok
  end

  def show
    @show = Show.find(params[:id])
    render json: ShowSerializer.new(@show), status: :ok
  end

  def create
    @show = Show.create(show_params)
    render json: @show, status: :created
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    render json: @show
  end

  private

  def show_params
    params.require(:show).permit(:title, :genre, :schedule, :rating)
  end

end
