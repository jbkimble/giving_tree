Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  #
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  #
  # get '/dashboard', to: 'users#show'

  namespace :facility do
    get '/signup', to: 'users#new'
    get '/signup', to: 'users#create'

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    get '/dashboard', to: 'users#show'
    get '/edit', to: 'users#edit'
    post '/edit', to: 'users#update'

    resources :dashboard, only: [:index]
  end

end
