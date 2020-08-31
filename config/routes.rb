Rails.application.routes.draw do
  
  root 'products#index'

  resources :kituis, only: [:index]
  resources :products, only: [:show, :index]
  devise_for :users
  resources :users, only: [:show]
end
