Rails.application.routes.draw do

 

  get 'users/show'
  devise_for :users,
    controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
   }

  root 'top#index'
  get 'top/index' => 'top#index', as: 'top_index'
  get 'top/top' => 'top#top', as: 'top_top'
  get 'targets/calendar' => 'targets#calendar', as: 'target_calendar'

  resources :users
  resources :targets do
    resources :patiences, only: [:new, :create, :show, :edit, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]

  end
end
