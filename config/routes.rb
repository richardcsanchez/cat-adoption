Rails.application.routes.draw do
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy"
  post "/cats", to: "cats#create"
  delete "/cats", to: "cats#destroy"

  resources :cats

  resources :agencies do
    resources :cats, only: [:show, :index]
  end

  resources :users

  root "welcome#home"
end
