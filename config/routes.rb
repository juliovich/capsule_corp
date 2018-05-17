Rails.application.routes.draw do
  get 'profile', to: 'users#profile'
  devise_for :users
  root to: 'robots#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :robots
  resources :bookings
end
