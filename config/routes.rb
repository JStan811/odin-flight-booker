Rails.application.routes.draw do
  get 'bookings/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "flights#index"
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]
end
