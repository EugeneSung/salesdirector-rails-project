Rails.application.routes.draw do
  root 'sessions#index'
  post '/salesmen/:id', to: 'salesmen#show'
  resources :salesmen
  resources :customers

  resource :sessions, only: [:new]
  # delete '/signout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
