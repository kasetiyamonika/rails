Rails.application.routes.draw do
  resources :appointments
  resources :services
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
