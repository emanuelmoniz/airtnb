class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
