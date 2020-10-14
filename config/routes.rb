Rails.application.routes.draw do
  resources :favorites
  resources :reservations
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/yelp', to: 'yelps#fetch'

  post '/search', to: 'yelp#search'
  get '/search', to: 'yelp#search'
  post '/login', to: 'auth#login'
end
