Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :products
  resources :checkout, only: [:create]

  post "checkout/create", to: "checkout#create", format: :js
end
