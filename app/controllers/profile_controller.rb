class ProfileController < ApplicationController
  before_action :set_user, :set_toilets, :set_bookings

  def show
    my_toilets
    used_toilets
    authorize @user
  end

  def my_toilets
    @my_toilets = @toilets.where(user: @user)
    authorize @user
  end

  def used_toilets
    my_bookings = @bookings.where(user_id: @user)
    @used_toilets = []
    my_bookings.each do |booking|
      @used_toilets << @toilets.find(booking.toilet_id)
    end
    authorize @user
  end

  def my_reviews
    authorize @user
  end

  private

  def set_user
    @user = current_user
  end

  def set_toilets
    @toilets = policy_scope(Toilet)
  end

  def set_bookings
    @bookings = policy_scope(Booking)
  end
end
