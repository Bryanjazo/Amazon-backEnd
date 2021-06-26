Rails.application.routes.draw do
  resources :baskets
  resources :orders

  resources :carts
  resources :reviews
  resources :products
  resources :sessions

  
  resources :users do
    resources :orders
  end
  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
