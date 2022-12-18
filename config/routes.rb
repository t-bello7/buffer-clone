Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'pages/contact', as: :contact
  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  get "password/reset", to: "password_reset#new", as: :password_reset
  post "password/reset", to: "password_reset#create"
  
  # main controller
  root to: "main#index"
end
