Rails.application.routes.draw do
  resources :users do
    member do
      get :hovercard
    end
  end
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
