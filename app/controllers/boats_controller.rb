class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = @boat.bookings.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @user = current_user
    @boat.user_id = @user.id
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :theme, :price_per_day, :photo, :photo_cache)
  end
end
