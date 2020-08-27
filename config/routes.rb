Rails.application.routes.draw do
  devise_for :users

  resources :reservations do
    resources :reviews, only: [:create, :new, :index]
  end
  resources :boats

  patch "/reservations/:id/confirm", to: "reservations#confirm", as: :confirm_reservation
  delete "/reservations/:id/decline", to: "reservations#decline", as: :decline_reservation

  resources :users, only: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
