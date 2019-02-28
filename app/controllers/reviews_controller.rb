class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @toilet = Toilet.find(params[:toilet_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    @review.save
    authorize @review
    redirect_to root
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
