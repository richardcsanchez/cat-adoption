Rails.application.routes.draw do
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy"
  post "/cats", to: "cats#create"
  delete "/cats", to: "cats#destroy"
  get "/agency/:id/cats", to: "agencies#cats_by_agency"
  get '/auth/facebook/callback' => 'sessions#create'

  resources :cats

  resources :agencies do
    resources :cats, only: [:show, :index, :cats_by_agency]
  end

  resources :users

  root "welcome#home"
end
