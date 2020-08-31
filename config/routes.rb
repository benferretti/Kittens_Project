Rails.application.routes.draw do
  
  root 'products#index'

  resources :kituis, only: [:index]
 
  devise_for :users
end
