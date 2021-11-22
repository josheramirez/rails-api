Rails.application.routes.draw do
  root to: "static#home"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  post :login, to: "sessions#create"

  resources :posts, only: [:create, :index, :show]
  resources :accuracies, only: [:create]
  get '/targets/:name', to: "targets#findByName"
end
