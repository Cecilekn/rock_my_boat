class BookingsController < ApplicationController
  def my_bookings
    @user = current_user
    @bookings = Booking.where(user_id: @user)
  end

  def bookings_owner
    @user = current_user
    @boats = @user.boats
    @bookings = []
    @boats.each do |boat|
      boat.bookings.each do |booking|
        @bookings << booking
      end
    end
    @bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/new'
    end
  end

  def edit
  end

  def update
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
