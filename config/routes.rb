Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  resources :person
  root "person#new"
  get "/person/new", to: "person#new"
  post "person/create", to: "person#create"
  get "/movie/new", to: "movies#new"
  post "movie/create", to: "movies#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
