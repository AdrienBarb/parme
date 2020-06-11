Rails.application.routes.draw do
  devise_for :users

  get "dresses/my-dresses", to: 'dresses#my_dresses', as: 'my_dresses'
  get "pages/about", to:'pages#about'
  get "/bookings", to: 'bookings#index'

  root to: 'pages#home'
  resources :dresses, only: [:index, :show, :new, :update, :create, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]

    patch :offline, on: :member
    patch :online, on: :member
  end
end
