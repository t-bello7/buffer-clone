Rails.application.routes.draw do
  get 'pages/contact', as: :contact
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # GET about
  get "about-us", to: "about#index", as: :about
  
  # main controller
  root to: "main#index"
end
