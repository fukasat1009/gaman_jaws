Rails.application.routes.draw do

  get 'users/show'
  devise_for :users
  root 'top#index'
  get 'targets/calendar' => 'targets#calendar', as: 'target_calendar'

  resources :users
  resources :targets do
    resources :patiences, only: [:new, :create, :show, :edit, :update]
    resources :post_comments, only: [:create, :destroy]
  end
end
