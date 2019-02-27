class BookingsController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @toilet.update(available: false)
    @booking = Booking.new
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.save
    authorize @booking
    redirect_to toilet_booking_path(@toilet, @booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @toilet = @booking.toilet
    @user = @booking.user
    authorize @user
    authorize @toilet
    authorize @booking
    @bookings = policy_scope(Booking).order(created_at: :asc)

    @booking.toilet.update(available: true) if Time.now - @booking.created_at > 1000000000000000000000

  end
end
