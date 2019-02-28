Rails.application.routes.draw do
  devise_for :users

  get 'profile', :to => 'profile#show'
  get 'profile/my_toilets', to: 'profile#my_toilets'
  get 'profile/used_toilets', to: 'profile#used_toilets'
  get 'profile/my_reviews', to: 'profile#my_reviews'

  root to: 'toilets#index'
  resources :toilets do
    resources :bookings, only: [:create] do
      resources :reviews, only: [:new, :create]
    end
  end
end
