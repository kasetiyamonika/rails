Rails.application.routes.draw do
  resources :publics
  resources :authors
  resources :books
  resources :appointments
  resources :order_products
  resources :orders
  resources :products
  resources :categories
  resources :services
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
