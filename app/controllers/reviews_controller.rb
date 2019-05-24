class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to my_bookings_path
    else
      render 'reviews/new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :note)
  end
end
