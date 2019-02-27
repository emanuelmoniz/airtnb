Rails.application.routes.draw do
  devise_for :users

  # resources :profile, only: [:show] do

  # end

  get 'profile', :to => 'profile#show'
  get 'profile/my_toilets', to: 'profile#my_toilets'
  get 'profile/used_toilets', to: 'profile#used_toilets'

  root to: 'toilets#index'
  resources :toilets do
    resources :bookings, only: [:create, :show]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
