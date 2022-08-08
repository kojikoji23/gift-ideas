Rails.application.routes.draw do
  devise_for :users
  get 'gifts/index'
  root to: "gifts#index"

  resources :gifts do
    resources :comments, only: :create
  end
end
