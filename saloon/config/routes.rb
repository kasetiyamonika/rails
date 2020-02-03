Rails.application.routes.draw do
  resources :facebooks
  resources :mytbls
  resources :mies
  resources :utables
  resources :tables
  resources :offers
  resources :logins
  resources :admins
  resources :products
  resources :categories
  resources :services
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
