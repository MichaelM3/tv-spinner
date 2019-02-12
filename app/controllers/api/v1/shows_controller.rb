class Api::V1::ShowsController < ApplicationController

  def index
    @shows = Show.all
    render json: @shows, status: :ok
  end

  def show
    @show = Show.find(params[:id])
    render json: ShowSerializer.new(@show), status: :ok
  end

end
