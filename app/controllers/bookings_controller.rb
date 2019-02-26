class BookingsController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.save
    authorize @booking
    redirect_to @toilet
  end
end
