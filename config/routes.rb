Rails.application.routes.draw do
  devise_for :users

  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/index'

  resources :reservations do
    resources :reviews, only: [:create, :new]
  end
  resources :boats

  resources :users, only: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
