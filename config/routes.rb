Rails.application.routes.draw do
  root 'sessions#index'
  resources :salesmen
  resources :customers do
    resources :salesorders
  end


  resources :invoices
  resources :salesorders
  resources :products

  resource :sessions, only: [:new]
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
