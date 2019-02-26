Rails.application.routes.draw do
  devise_for :users
  root to: 'toilets#index'
  resources :toilets do
    resources :bookings, only: [:create]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
