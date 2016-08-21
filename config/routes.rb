Rails.application.routes.draw do
  resources :users
  resources :likes
  resources :comments



  get '/pokemons/search', to: 'pokemons#results'

  resources :pokemons

  post '/api/likes', to: 'api/likes#create'


    # getting the form
  get '/session/new', to: 'session#new'    #get '/login', to: 'session#new'  - change login  everywhere else:)
    # creating a session / logging in
  post '/session', to: 'session#create'
    # destroying a session/ logging out
  delete '/session', to: 'session#destroy'

  get '/login', to: 'session#new'



  # get 'results', to: 'pokemons#results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
