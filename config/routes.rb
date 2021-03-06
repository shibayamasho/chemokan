Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  get '/patients/search', to: 'patients#search'
  resources :patients do
    resources :treatments, only: [:show, :new, :create, :edit, :update, :destroy]
    get '/treatments/edit2/:id', to: 'treatments#edit2'
    patch '/treatments/update2/:id', to: 'treatments#update2'
  end
  get '/plans/search', to: 'plans#search'
  resources :plans do
    resources :diseases, only: [:create, :destroy]
  end
end
