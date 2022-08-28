Rails.application.routes.draw do
  resources :users do
    member do
      get :hovercard
    end
  end
  resources :products
  
  patch '/remove_last_product', to: 'products#remove_last_product', as: 'remove_last_product'
  
  root "products#index"
end


