Rails.application.routes.draw do
  resources :patients
  resources :emails_users
  resources :contacts_users
  resources :reports
  resources :emails do
    member do
      get :emails_users
    end
  end

  get '/emp/:status', to: 'emails#index', age: '15'

  resources :contacts do
    member do
      get :contacts_users
    end
  end
  resources :users do
    collection do
      get :active
    end

    member do
      get :custom
    end
end

post '/employees/:status', to: 'users#index', age: '50'

  # get '/user/:id', to: 'user#show'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
