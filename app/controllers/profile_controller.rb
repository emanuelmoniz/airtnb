class ProfileController < ApplicationController
  before_action :set_user, :set_toilets, :set_bookings, :set_reviews

  def show
    my_toilets
    used_toilets
    authorize @user
  end

  def my_toilets
    @my_toilets = @toilets.where(user_id: @user).order(created_at: :desc)
    authorize @user
  end

  def used_toilets
    my_bookings = @bookings.where(user_id: @user).order(created_at: :desc)
    @used_toilets = []
    my_bookings.each do |booking|
      @used_toilets << @toilets.find(booking.toilet_id)
    end
    authorize @user
  end

  def my_reviews
    @reviews = @reviews.where(user_id: @user).order(created_at: :desc)
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

  def set_reviews
    @reviews = policy_scope(Review)
  end
end
