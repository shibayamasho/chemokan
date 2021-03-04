Rails.application.routes.draw do
  devise_for :users
  root to: "treatments#index"
  resources :treatments, only: [:index]
  resources :patients
  resources :diseases, only: [:index, :create, :edit, :update, :destroy]
end
