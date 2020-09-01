Rails.application.routes.draw do
  
  root 'products#index'
  
  devise_for :users

  resources :static_pages, only: [:index]
  resources :kituis, only: [:index]

  resources :products, only: [:show, :index]
  
  resources :users, only: [:show] do
    resources :carts, only: [:show]
  end
  
  resources :product_carts, only: [:new, :create, :destroy]
  

end
