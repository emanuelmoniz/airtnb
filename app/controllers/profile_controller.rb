class ProfileController < ApplicationController
  def show
    @user = current_user
    @toilets = policy_scope(Toilet).where(user: current_user)
    authorize @user
  end
end
