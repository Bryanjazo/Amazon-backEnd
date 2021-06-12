Rails.application.routes.draw do
  devise_for :users
  resources :carts
  resources :reviews
  resources :products
  resources :sessions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
