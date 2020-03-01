class TheatresController < ApplicationController
  before_action :set_theatre, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @theatres = Theatre.all
    respond_with(@theatres)
  end

  def show
    respond_with(@theatre)
  end

  def new
    @theatre = Theatre.new
    respond_with(@theatre)
  end

  def edit
  end

  def create
    @theatre = Theatre.new(theatre_params)
    @theatre.save
    respond_with(@theatre)
  end

  def update
    @theatre.update(theatre_params)
    respond_with(@theatre)
  end

  def destroy
    @theatre.destroy
    respond_with(@theatre)
  end

  def get_theatres
    @theatres = Movie.find(params[:movie_id]).theatres.uniq
  end  

  private
    def set_theatre
      @theatre = Theatre.find(params[:id])
    end

    def theatre_params
      params.require(:theatre).permit(:name, :seat_limit)
    end
end
