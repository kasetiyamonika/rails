Rails.application.routes.draw do
  devise_for :users

  get '/index', to: 'home#index'

  get '/abouts', to: 'home#abouts'

  get '/blogs', to: 'home#blogs'

  get '/contactus', to: 'home#contactus'

  get '/search', to: 'home#search'

  resources :products

  resources :services

  resources :orders

  resources :appointments

    root to: 'home#index'
end
