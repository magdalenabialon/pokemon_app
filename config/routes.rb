Rails.application.routes.draw do
  resources :likes
  resources :comments

  get '/pokemons/search', to: 'pokemons#results'
  
  resources :pokemons

  post '/api/likes', to: 'api/likes#create'

  # get 'results', to: 'pokemons#results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
