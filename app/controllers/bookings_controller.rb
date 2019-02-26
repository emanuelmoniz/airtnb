class BookingsController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.save
    redirect_to toilet_path
    authorize @booking
  end
end
