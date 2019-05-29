class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @city = params[:city].split(",").first if params[:city].present?
    @theme = params[:theme] if params[:theme].present?

    # @boats = Boat.where.not(latitude: nil, longitude: nil)
    @boats = Boat.all
    @boats = Boat.where("location ILIKE ?", "%#{@city}%") if @city.present?
    @boats = Boat.where("theme ILIKE ?", "#{@theme}") if @theme.present?

    @cities = []
    @themes = []

    Boat.all.each do |boat|
      @cities << boat.location
      @themes << boat.theme
    end

    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
    end
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
    params.require(:boat).permit(:name, :capacity, :location, :theme, :price_per_day,
      :photo, :photo_2, :photo_3, :photo_4, :photo_5, :photo_cache, :photo_2_cache, :photo_3_cache, :photo_4_cache, :photo_5_cache)
  end
end
