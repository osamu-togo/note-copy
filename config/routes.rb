Rails.application.routes.draw do
  devise_for :users
  root "notes#index"

  resources :notes, only: [:index, :new, :create, :show] do
    resources :image, only: [:new, :create]
  end
end
