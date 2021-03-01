Rails.application.routes.draw do
  devise_for :users
  root to: "treatments#index"
  resouces :treatments, only: [:index]
end
