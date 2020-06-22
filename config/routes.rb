Rails.application.routes.draw do

  get 'users/show'
  devise_for :users
  root 'top#index'

  resources :users
  resources :targets do
    resources :patiences, only: [:new, :create, :show, :edit, :update]
  end
end
