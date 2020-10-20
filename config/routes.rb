Rails.application.routes.draw do
  resources :favorites
  resources :reservations, only: %i[index create destroy]
  resources :restaurants, only: %i[index show create update delete]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/yelp', to: 'yelps#fetch'

  post '/search', to: 'yelp#search'
  get '/search', to: 'yelp#search'
  post '/geoSearch', to: 'yelp#geoSearch'
  get '/geoSearch', to: 'yelp#geoSearch'
  post '/login', to: 'auth#login'
  get '/persist', to: 'users#persist'
end
