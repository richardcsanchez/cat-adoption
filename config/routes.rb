Rails.application.routes.draw do
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy"
  post "/cats", to: "cats#create"

  resources :cats
  resources :agencies
  resources :users

  root "welcome#home"
end
