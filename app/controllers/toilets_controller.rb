class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @toilet = Toilet.new
  end

  def create
    toilet = Toilet.new(toilet_params)
    toilet.save
  end

  def edit
  end

  def update
    @toilet.update(toilet_params)
  end

  def destroy
    @toilet.destroy
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :description, :photo, :address, :available, :user)
  end
end
