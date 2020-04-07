Rails.application.routes.draw do
  resources :stocks, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create]
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
end
