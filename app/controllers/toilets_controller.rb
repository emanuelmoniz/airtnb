class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.nil?
      @toilets = policy_scope(Toilet).where(available:true)
    else
      @toilets = policy_scope(Toilet).where(available:true).where.not(user_id: current_user.id)
    end
  end

  def show
    authorize @toilet
    @bookings = policy_scope(Booking).order(created_at: :asc)

    @bookings.each do |booking|
      booking.toilet.update(available: true) if Time.now - booking.created_at > 100000000000000000
    end
  end

  def new
    @toilet = Toilet.new
    authorize @toilet
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.available = params[:toilet][:available] == "1"
    @toilet.user = current_user
    @toilet.save
    authorize @toilet
    if @toilet.save
      redirect_to @toilet
    else
      render :new
    end
  end

  def edit
    authorize @toilet
  end

  def update
    @toilet.update(toilet_params)
    @toilet.update(available: params[:toilet][:available] == "1")
    authorize @toilet
    if @toilet.update(toilet_params) || @toilet.update(available: params[:toilet][:available] == "1")
      redirect_to @toilet
    else
      render :edit
    end
  end

  def destroy
    @toilet.destroy
    authorize @toilet
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :description, :photo, :address, :price)
  end
end
