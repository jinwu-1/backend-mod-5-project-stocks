Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  resources :users, only: [:index, :create]
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
end
