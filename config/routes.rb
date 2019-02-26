Rails.application.routes.draw do
  devise_for :users

  get 'profile', :to => 'profile#show'


  root to: 'toilets#index'
  resources :toilets
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
