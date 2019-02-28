class ReviewsController < ApplicationController
  before_action :set_user, :set_booking, :set_toilet, only: [:new, :create]
  def new
    @review = Review.new
    @review.booking = @booking
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = @user
    authorize @review
    if @review.save
      redirect_to @toilet
    else
      render :new
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_toilet
    @toilet = Toilet.find(params[:toilet_id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
