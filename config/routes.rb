Rails.application.routes.draw do
  
  root 'products#index'
  
  devise_for :users

  resources :kituis, only: [:index]
  resources :products, only: [:show, :index]
  resources :users, only: [:show]
end
