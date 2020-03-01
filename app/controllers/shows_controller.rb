class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @shows = Show.all
    respond_with(@shows)
  end

  def show
    respond_with(@show)
  end

  def new
    @show = Show.new
    respond_with(@show)
  end

  def edit
  end

  def create
    @show = Show.new(show_params)
    @show.save
    respond_with(@show)
  end

  def update
    @show.update(show_params)
    respond_with(@show)
  end

  def destroy
    @show.destroy
    respond_with(@show)
  end

  private
    def set_show
      @show = Show.find(params[:id])
    end

    def show_params
      params.require(:show).permit(:show_time, :show_fee, :movie_id, :theatre_id)
    end
end
