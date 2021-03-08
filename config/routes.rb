Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  #resources :treatments
  resources :patients
  resources :plans do
    resources :diseases, only: [:create, :destroy]
  end
end
