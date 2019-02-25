class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
    @toilets = Toilet.all
  end

  def show
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.available = params[:toilet][:available] == "1"
    @toilet.user = current_user
    @toilet.save
    if @toilet.save
      redirect_to @toilet
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @toilet.update(toilet_params)
      redirect_to @toilet
    else
      render :edit
    end
  end

  def destroy
    @toilet.destroy
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :description, :photo, :address)
  end
end
