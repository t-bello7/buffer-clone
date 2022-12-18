Rails.application.routes.draw do
  get 'pages/contact', as: :contact
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # GET about
  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  # main controller
  root to: "main#index"
end
