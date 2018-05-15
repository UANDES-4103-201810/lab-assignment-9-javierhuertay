Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  root "person#new"
  get "/person/new", to: "persons#new"
  post "person/create", to: "persons#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
