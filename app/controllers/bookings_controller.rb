class BookingsController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @toilet.update(available: false)
    @booking = Booking.new
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.save
    authorize @booking
    ChangeAvailableJob.perform_later(@booking.id)
    redirect_to toilet_path(@toilet, booking: @booking)
  end

  # def show
  #   @booking = Booking.find(params[:id])
  #   @toilet = @booking.toilet
  #   @user = @booking.user
  #   authorize @user
  #   authorize @toilet
  #   authorize @booking
  # end
end
