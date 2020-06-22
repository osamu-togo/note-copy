Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  root "notes#index"

  resources :notes, only: [:new] 
end
