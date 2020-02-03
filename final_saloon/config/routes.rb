Rails.application.routes.draw do
  get '/index', to: 'home#index'

  get '/services', to: 'home#services'

  get '/products', to: 'home#products'

  get '/abouts', to: 'home#abouts'

  get '/blogs', to: 'home#blogs'

  get '/contacts', to: 'home#contacts'

  get '/search', to: 'home#search'

  root to: 'home#index'
end
