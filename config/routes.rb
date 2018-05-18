Rails.application.routes.draw do
  devise_for :users
  root to: 'robots#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :robots
  resources :bookings

  namespace :my do
    resources :robots, only: [:index]
  end
end
