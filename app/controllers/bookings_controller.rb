class BookingsController < ApplicationController
  def my_bookings
    @user = current_user
    @bookings = Booking.where(user_id: @user)
  end

  def bookings_owner
    @user = current_user
    @boats = @user.boats
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
