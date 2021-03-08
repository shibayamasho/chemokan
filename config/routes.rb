Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  resources :patients do
    resources :treatments
  end
  resources :plans do
    resources :diseases, only: [:create, :destroy]
  end
end
