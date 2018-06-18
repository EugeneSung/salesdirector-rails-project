Rails.application.routes.draw do
  root 'sessions#index'

  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  post '/salesmen/:id', to: 'salesmen#show'
  resource :sessions, only: [:new]
  resources :salesmen
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
