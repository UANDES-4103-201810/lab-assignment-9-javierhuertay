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
  get "/movies/new", to: "movies#new"
  post "movies/create", to: "movies#create"
  post "/persons?role=<type>", to: "type#show"
  post '/categories/:id', to: "categories#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
