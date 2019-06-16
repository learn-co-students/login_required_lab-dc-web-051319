Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "", to: "secrets#show", as: "root"
  get "login", to: "sessions#new", as: "login"
  delete "login", to: "sessions#destroy", as: "logout"
  # resources :sessions, only: [:create]
  post "/login", to: "sessions#create"


end
