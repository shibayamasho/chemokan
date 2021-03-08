Rails.application.routes.draw do
  devise_for :users
  root to: "treatments#index"
  resources :treatments, only: [:index]
  resources :patients
  resources :plans do
    resources :diseases, only: [:create, :destroy]
  end
end
