Rails.application.routes.draw do
  devise_for :users

  patch "/reservations/:id", to: "reservations#confirm", as: :confirm_reservation
  delete "/reservations/:id", to: "reservations#decline", as: :decline_reservation
  get "/reservations/:id/confirm", to: "reservations#confirm_show", as: :confirm_reservation_show
  get "/reservations/:id/decline", to: "reservations#decline_show", as: :decline_reservation_show

  resources :reservations do
    resources :reviews, only: [:create, :new, :index]
  end
  resources :boats

  resources :users, only: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
