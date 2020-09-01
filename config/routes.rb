Rails.application.routes.draw do
  
  root 'products#index'
  
  devise_for :users

  resources :kituis, only: [:index]
  resources :products, only: [:show, :index]
  resources :users, only: [:show]

  resources :carts, only: [:show]

  resources :static_pages, only: [:index]

end
